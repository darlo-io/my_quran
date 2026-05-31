import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/data/datasources/quran_api_client.dart';
import 'package:quran_app/features/reader/data/datasources/quran_remote_data_source.dart';
import 'package:quran_app/features/reader/data/mappers/reader_mapper.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/reading_progress.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/entities/translation.dart';
import 'package:quran_app/features/reader/domain/repositories/reader_repository.dart';

class ReaderRepositoryImpl implements ReaderRepository {
  final AppDatabase _db;
  final QuranRemoteDataSource _remote;

  ReaderRepositoryImpl(this._db, this._remote);

  @override
  Future<Either<Failure, List<Surah>>> getSurahs() async {
    try {
      final local = await _db.surahDao.getAll();
      if (local.isNotEmpty) {
        return Right(local.map(ReaderMapper.surahFromData).toList());
      }
      final result = await _remote.getAllSurahs();
      return result.fold(
        (failure) => Left(failure),
        (surahs) async {
          await _syncSurahsToLocal(surahs);
          return Right(surahs);
        },
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  Future<void> _syncSurahsToLocal(List<Surah> surahs) async {
    for (final s in surahs) {
      await _db.into(_db.surahs).insertOnConflictUpdate(
            SurahsCompanion(
              id: Value(s.id),
              number: Value(s.number),
              nameArabic: Value(s.nameArabic),
              nameEnglish: Value(s.nameEnglish),
              nameTranslated: Value(s.nameTranslated),
              revelationType: Value(s.revelationType),
              ayahCount: Value(s.ayahCount),
              sortOrder: Value(s.sortOrder),
            ),
          );
    }
  }

  @override
  Future<Either<Failure, Surah>> getSurah(int surahId) async {
    try {
      final local = await _db.surahDao.getById(surahId);
      if (local != null) return Right(ReaderMapper.surahFromData(local));
      final result = await _remote.getSurah(surahId);
      return result.fold(
        (f) => Left(f),
        (s) async {
          await _syncSurahsToLocal([s]);
          return Right(s);
        },
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<Ayah>>> getAyahs(int surahId) async {
    try {
      final local = await _db.ayahDao.getBySurah(surahId);
      if (local.isNotEmpty) {
        return Right(local.map(ReaderMapper.ayahFromData).toList());
      }
      final surah = await _db.surahDao.getById(surahId);
      final number = surah?.number ?? surahId;
      final result = await _remote.getAyahs(number);
      return result.fold(
        (f) => Left(f),
        (ayahs) async {
          await _syncAyahsToLocal(surahId, ayahs);
          return Right(ayahs);
        },
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  Future<void> _syncAyahsToLocal(int surahId, List<Ayah> ayahs) async {
    for (final a in ayahs) {
      await _db.into(_db.ayahs).insertOnConflictUpdate(
            AyahsCompanion(
              id: Value(a.id),
              surahId: Value(surahId),
              ayahNumber: Value(a.ayahNumber),
              globalAyahNumber: Value(a.globalAyahNumber),
              arabicText: Value(a.arabicText),
              pageNumber: Value(a.pageNumber),
              juzNumber: Value(a.juzNumber),
              hizbNumber: Value(a.hizbNumber),
            ),
          );
    }
    try {
      await _db.customStatement(
        "INSERT INTO ayahs_fts(ayahs_fts) VALUES('rebuild')",
      );
    } catch (_) {}
  }

  @override
  Future<Either<Failure, Ayah>> getAyah(int surahId, int ayahNumber) async {
    try {
      final local =
          await _db.ayahDao.getBySurahAndNumber(surahId, ayahNumber);
      if (local != null) return Right(ReaderMapper.ayahFromData(local));
      return const Left(Failure.notFound(message: 'Аят не найден'));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<Translation>>> getInstalledTranslations() async {
    try {
      final local = await _db.translationDao.getInstalled();
      if (local.isNotEmpty) {
        return Right(local.map(ReaderMapper.translationFromData).toList());
      }
      return _remote.getAvailableTranslations();
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<TranslationAyah>>> getTranslationAyahs(
    int translationId,
    int surahId,
  ) async {
    try {
      final surah = await _db.surahDao.getById(surahId);
      final number = surah?.number ?? surahId;
      return _remote.getTranslationAyahs(number, 'ru.kuliev');
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, ReadingProgress?>> getReadingProgress(
    int surahId,
  ) async {
    try {
      final data = await _db.readingProgressDao.getProgress(surahId);
      if (data == null) return const Right(null);
      return Right(ReaderMapper.readingProgressFromData(data));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveReadingProgress(
    ReadingProgress progress,
  ) async {
    try {
      await _db.readingProgressDao.upsertProgress(
        ReadingProgressTableCompanion(
          id: Value(progress.id),
          surahId: Value(progress.surahId),
          ayahId: Value(progress.ayahId),
          completed: Value(progress.completed),
          lastOpenedAt: Value(progress.lastOpenedAt),
          updatedAt: Value(DateTime.now()),
        ),
      );
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, ReadingProgress>> getLastReadPosition() async {
    try {
      final data = await _db.readingProgressDao.getLastPosition();
      if (data == null) {
        return const Left(Failure.notFound(message: 'Нет позиции чтения'));
      }
      return Right(ReadingProgress(
        id: data.id,
        surahId: data.surahId,
        ayahId: data.ayahId,
        completed: false,
        lastOpenedAt: data.updatedAt,
        updatedAt: data.updatedAt,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveReadingSession(
    ReadingSession session,
  ) async {
    try {
      await _db.readingProgressDao.insertSession(
        ReadingSessionsCompanion(
          id: Value(session.id),
          startedAt: Value(session.startedAt),
          endedAt: Value(session.endedAt),
          surahId: Value(session.surahId),
          ayahsRead: Value(session.ayahsRead),
          durationSeconds: Value(session.durationSeconds),
        ),
      );
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final quranApiClientProvider = Provider<QuranApiClient>((ref) {
  return QuranApiClient();
});

final quranRemoteDataSourceProvider = Provider<QuranRemoteDataSource>((ref) {
  return QuranRemoteDataSource(ref.watch(quranApiClientProvider));
});

final readerRepositoryProvider = Provider<ReaderRepository>((ref) {
  return ReaderRepositoryImpl(
    ref.watch(appDatabaseProvider),
    ref.watch(quranRemoteDataSourceProvider),
  );
});
