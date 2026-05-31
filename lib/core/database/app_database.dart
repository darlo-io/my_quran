import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:quran_app/core/database/tables.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Surahs,
    Ayahs,
    Translations,
    TranslationAyahs,
    Tafsirs,
    TafsirAyahs,
    Reciters,
    AudioPacks,
    AudioFiles,
    ContentPacks,
    InstalledPackages,
    ReadingProgressTable,
    ReadingSessions,
    LastReadPosition,
    Bookmarks,
    FavoriteReciters,
    ReadingGoals,
    GoalProgress,
    HifzPlans,
    HifzItems,
    ReviewSessions,
    ReviewResults,
    DownloadTasks,
    Settings,
    UserProfile,
    SyncQueue,
  ],
  daos: [
    SurahDao,
    AyahDao,
    TranslationDao,
    ReciterDao,
    AudioPackDao,
    AudioFileDao,
    ReadingProgressDao,
    BookmarkDao,
    HifzDao,
    GoalDao,
    SettingsDao,
    ContentPackDao,
    DownloadDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await customStatement('''
            CREATE VIRTUAL TABLE IF NOT EXISTS ayahs_fts USING fts5(
              arabic_text, content='ayahs', content_rowid='id'
            )
          ''');
          await customStatement('''
            CREATE VIRTUAL TABLE IF NOT EXISTS translations_fts USING fts5(
              translation_text, content='translation_ayahs', content_rowid='id'
            )
          ''');
        },
        beforeOpen: (details) async {},
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'quran_app.sqlite'));
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
    return NativeDatabase.createInBackground(file);
  });
}

// DAOs
@DriftAccessor(tables: [Surahs])
class SurahDao extends DatabaseAccessor<AppDatabase> with _$SurahDaoMixin {
  SurahDao(super.db);

  Future<List<SurahData>> getAll() => select(surahs).get();
  Future<SurahData?> getById(int id) =>
      (select(surahs)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<SurahData?> getByNumber(int number) =>
      (select(surahs)..where((t) => t.number.equals(number)))
          .getSingleOrNull();
}

@DriftAccessor(tables: [Ayahs])
class AyahDao extends DatabaseAccessor<AppDatabase> with _$AyahDaoMixin {
  AyahDao(super.db);

  Future<List<AyahData>> getBySurah(int surahId) =>
      (select(ayahs)..where((t) => t.surahId.equals(surahId))).get();

  Future<AyahData?> getBySurahAndNumber(int surahId, int ayahNumber) =>
      (select(ayahs)
            ..where((t) =>
                t.surahId.equals(surahId) & t.ayahNumber.equals(ayahNumber)))
          .getSingleOrNull();

  Future<List<AyahData>> searchArabic(String query) {
    final escaped = query.replaceAll("'", "''");
    return customSelect(
      'SELECT ayahs.* FROM ayahs '
      'JOIN ayahs_fts ON ayahs.id = ayahs_fts.rowid '
      "WHERE ayahs_fts MATCH '$escaped*' "
      'ORDER BY rank LIMIT 50',
      readsFrom: {ayahs},
    ).map((row) => AyahData(
          id: row.read<int>('id'),
          surahId: row.read<int>('surah_id'),
          ayahNumber: row.read<int>('ayah_number'),
          globalAyahNumber: row.read<int>('global_ayah_number'),
          arabicText: row.read<String>('arabic_text'),
          pageNumber: row.read<int>('page_number'),
          juzNumber: row.read<int>('juz_number'),
          hizbNumber: row.read<int>('hizb_number'),
        )).get();
  }
}

@DriftAccessor(tables: [Translations, TranslationAyahs])
class TranslationDao extends DatabaseAccessor<AppDatabase>
    with _$TranslationDaoMixin {
  TranslationDao(super.db);

  Future<List<TranslationData>> getInstalled() =>
      (select(translations)..where((t) => t.enabled.equals(true))).get();
  Future<List<TranslationData>> getAll() => select(translations).get();
}

@DriftAccessor(tables: [Reciters, AudioPacks, AudioFiles, FavoriteReciters])
class ReciterDao extends DatabaseAccessor<AppDatabase>
    with _$ReciterDaoMixin {
  ReciterDao(super.db);

  Future<List<ReciterData>> getAll() => select(reciters).get();
  Future<ReciterData?> getBySlug(String slug) =>
      (select(reciters)..where((t) => t.slug.equals(slug))).getSingleOrNull();
  Future<int> insertReciter(RecitersCompanion reciter) =>
      into(reciters).insert(reciter);
  Future<List<AudioPackData>> getPacks(int reciterId) =>
      (select(audioPacks)..where((t) => t.reciterId.equals(reciterId))).get();
  Future<void> addFavorite(int reciterId) =>
      into(favoriteReciters).insertOnConflictUpdate(
        FavoriteRecitersCompanion(
          reciterId: Value(reciterId),
          createdAt: Value(DateTime.now()),
        ),
      );
  Future<void> removeFavorite(int reciterId) =>
      (delete(favoriteReciters)..where((t) => t.reciterId.equals(reciterId)))
          .go();
  Future<List<ReciterData>> getFavorites() {
    return (select(reciters).join([
      innerJoin(favoriteReciters,
          favoriteReciters.reciterId.equalsExp(reciters.id)),
    ])).map((row) => row.readTable(reciters)).get();
  }
}

@DriftAccessor(tables: [AudioFiles])
class AudioFileDao extends DatabaseAccessor<AppDatabase>
    with _$AudioFileDaoMixin {
  AudioFileDao(super.db);

  Future<List<AudioFileData>> getByPack(int audioPackId) =>
      (select(audioFiles)..where((t) => t.audioPackId.equals(audioPackId)))
          .get();
  Future<AudioFileData?> getBySurahAndPack(int surahId, int audioPackId) =>
      (select(audioFiles)
            ..where((t) =>
                t.surahId.equals(surahId) & t.audioPackId.equals(audioPackId)))
          .getSingleOrNull();
  Future<AudioFileData?> getBySurahAndReciter(int surahId, int reciterId) {
    return (select(audioFiles).join([
      innerJoin(audioPacks, audioPacks.id.equalsExp(audioFiles.audioPackId)),
    ])
          ..where(audioFiles.surahId.equals(surahId))
          ..where(audioPacks.reciterId.equals(reciterId)))
        .map((row) => row.readTable(audioFiles))
        .getSingleOrNull();
  }
  Future<void> insertAll(List<AudioFilesCompanion> files) =>
      batch((b) => b.insertAll(audioFiles, files));
  Future<int> updateLocalPath(int id, String path) =>
      (update(audioFiles)..where((t) => t.id.equals(id)))
          .write(AudioFilesCompanion(localPath: Value(path)));
}

@DriftAccessor(tables: [ReadingProgressTable, ReadingSessions, LastReadPosition])
class ReadingProgressDao extends DatabaseAccessor<AppDatabase>
    with _$ReadingProgressDaoMixin {
  ReadingProgressDao(super.db);

  Future<ReadingProgressData?> getProgress(int surahId) =>
      (select(readingProgressTable)
            ..where((t) => t.surahId.equals(surahId)))
          .getSingleOrNull();

  Future<void> upsertProgress(ReadingProgressTableCompanion progress) =>
      into(readingProgressTable).insertOnConflictUpdate(progress);

  Future<LastReadPositionData?> getLastPosition() =>
      select(lastReadPosition).getSingleOrNull();

  Future<int> insertSession(ReadingSessionsCompanion session) =>
      into(readingSessions).insert(session);
}

@DriftAccessor(tables: [Bookmarks])
class BookmarkDao extends DatabaseAccessor<AppDatabase>
    with _$BookmarkDaoMixin {
  BookmarkDao(super.db);

  Future<List<BookmarkData>> getAll() =>
      (select(bookmarks)..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
          .get();
  Future<BookmarkData?> getByAyah(int ayahId) =>
      (select(bookmarks)..where((t) => t.ayahId.equals(ayahId)))
          .getSingleOrNull();
  Future<int> insert(BookmarksCompanion bookmark) =>
      into(bookmarks).insert(bookmark);
  Future<int> deleteById(int id) =>
      (delete(bookmarks)..where((t) => t.id.equals(id))).go();
}

@DriftAccessor(tables: [HifzPlans, HifzItems, ReviewSessions, ReviewResults])
class HifzDao extends DatabaseAccessor<AppDatabase> with _$HifzDaoMixin {
  HifzDao(super.db);

  Future<List<HifzPlanData>> getPlans() => select(hifzPlans).get();
  Future<int> insertPlan(HifzPlansCompanion plan) =>
      into(hifzPlans).insert(plan);
  Future<void> deletePlan(int id) =>
      (delete(hifzPlans)..where((t) => t.id.equals(id))).go();
  Future<List<HifzItemData>> getPlanItems(int planId) =>
      (select(hifzItems)..where((t) => t.planId.equals(planId))).get();
  Future<void> insertItems(List<HifzItemsCompanion> items) =>
      batch((b) => b.insertAll(hifzItems, items));
  Future<int> insertReviewResult(ReviewResultsCompanion result) =>
      into(reviewResults).insert(result);
}

@DriftAccessor(tables: [ReadingGoals, GoalProgress])
class GoalDao extends DatabaseAccessor<AppDatabase> with _$GoalDaoMixin {
  GoalDao(super.db);

  Future<List<ReadingGoalData>> getActive() =>
      (select(readingGoals)..where((t) => t.active.equals(true))).get();
  Future<int> insertGoal(ReadingGoalsCompanion goal) =>
      into(readingGoals).insert(goal);
  Future<void> deleteGoal(int id) =>
      (delete(readingGoals)..where((t) => t.id.equals(id))).go();
  Future<void> upsertProgress(GoalProgressCompanion progress) =>
      into(goalProgress).insertOnConflictUpdate(progress);
}

@DriftAccessor(tables: [Settings])
class SettingsDao extends DatabaseAccessor<AppDatabase> with _$SettingsDaoMixin {
  SettingsDao(super.db);

  Future<SettingsData?> getSettings() => select(settings).getSingleOrNull();

  Future<void> saveSettings(SettingsCompanion data) async {
    final existing = await select(settings).getSingleOrNull();
    if (existing != null) {
      await (update(settings)..where((t) => t.id.equals(existing.id))).write(data);
    } else {
      await into(settings).insert(data);
    }
  }
}

@DriftAccessor(tables: [ContentPacks, InstalledPackages])
class ContentPackDao extends DatabaseAccessor<AppDatabase>
    with _$ContentPackDaoMixin {
  ContentPackDao(super.db);

  Future<List<ContentPackData>> getAvailable() => select(contentPacks).get();
  Future<ContentPackData?> getById(int id) =>
      (select(contentPacks)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<int> insert(ContentPacksCompanion pack) =>
      into(contentPacks).insert(pack);
  Future<List<InstalledPackageData>> getInstalled() =>
      select(installedPackages).get();
  Future<void> install(InstalledPackagesCompanion pkg) =>
      into(installedPackages).insertOnConflictUpdate(pkg);
  Future<void> uninstall(int packageId) =>
      (delete(installedPackages)..where((t) => t.packageId.equals(packageId)))
          .go();
}

@DriftAccessor(tables: [DownloadTasks])
class DownloadDao extends DatabaseAccessor<AppDatabase>
    with _$DownloadDaoMixin {
  DownloadDao(super.db);

  Future<List<DownloadTaskData>> getAll() =>
      (select(downloadTasks)..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
          .get();
  Future<int> insert(DownloadTasksCompanion task) =>
      into(downloadTasks).insert(task);
  Future<void> updateStatus(int id, String status, int progress) =>
      (update(downloadTasks)..where((t) => t.id.equals(id)))
          .write(DownloadTasksCompanion(status: Value(status), progress: Value(progress)));
  Future<void> deleteById(int id) =>
      (delete(downloadTasks)..where((t) => t.id.equals(id))).go();
}

@DriftAccessor(tables: [AudioPacks])
class AudioPackDao extends DatabaseAccessor<AppDatabase>
    with _$AudioPackDaoMixin {
  AudioPackDao(super.db);

  Future<List<AudioPackData>> getByReciter(int reciterId) =>
      (select(audioPacks)..where((t) => t.reciterId.equals(reciterId))).get();
  Future<int> insert(AudioPacksCompanion pack) =>
      into(audioPacks).insert(pack);
}

// Providers
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final surahDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).surahDao);
final ayahDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).ayahDao);
final translationDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).translationDao);
final bookmarkDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).bookmarkDao);
final readingProgressDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).readingProgressDao);
final hifzDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).hifzDao);
final goalDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).goalDao);
final settingsDaoProvider = Provider((ref) => ref.watch(appDatabaseProvider).settingsDao);
