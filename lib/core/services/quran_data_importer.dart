import 'package:drift/drift.dart';
import 'package:quran_app/core/database/app_database.dart';

class QuranDataImporter {
  final AppDatabase _db;

  QuranDataImporter(this._db);

  Future<void> importSurahs(List<Map<String, dynamic>> surahs) async {
    await _db.batch((batch) {
      for (final surah in surahs) {
        batch.insert(
          _db.surahs,
          SurahsCompanion(
            number: Value(surah['number'] as int),
            nameArabic: Value(surah['name_arabic'] as String),
            nameEnglish: Value(surah['name_english'] as String),
            nameTranslated: Value(surah['name_translated'] as String),
            revelationType: Value(surah['revelation_type'] as String),
            ayahCount: Value(surah['ayah_count'] as int),
            sortOrder: Value(surah['number'] as int),
          ),
        );
      }
    });
  }

  Future<void> importAyahs(List<Map<String, dynamic>> ayahs) async {
    await _db.batch((batch) {
      for (final ayah in ayahs) {
        batch.insert(
          _db.ayahs,
          AyahsCompanion(
            surahId: Value(ayah['surah_id'] as int),
            ayahNumber: Value(ayah['ayah_number'] as int),
            globalAyahNumber: Value(ayah['global_number'] as int),
            arabicText: Value(ayah['arabic_text'] as String),
            pageNumber: Value(ayah['page_number'] as int),
            juzNumber: Value(ayah['juz_number'] as int),
            hizbNumber: Value(ayah['hizb_number'] as int),
          ),
        );
      }
    });

    // Rebuild FTS index
    await _db.customStatement(
      "INSERT INTO ayahs_fts(ayahs_fts) VALUES('rebuild')",
    );
  }

  Future<void> importReciters(List<Map<String, dynamic>> reciters) async {
    await _db.batch((batch) {
      for (final r in reciters) {
        batch.insert(
          _db.reciters,
          RecitersCompanion(
            slug: Value(r['slug'] as String),
            name: Value(r['name'] as String),
            imageUrl: Value(r['image_url'] as String?),
            description: Value(r['description'] as String?),
          ),
        );
      }
    });
  }

  Future<void> importAudioFiles(
    int audioPackId,
    List<Map<String, dynamic>> files,
  ) async {
    await _db.batch((batch) {
      for (final f in files) {
        batch.insert(
          _db.audioFiles,
          AudioFilesCompanion(
            audioPackId: Value(audioPackId),
            surahId: Value(f['surah_id'] as int),
            remoteUrl: Value(f['remote_url'] as String),
            durationSeconds: Value(f['duration_seconds'] as int),
            checksum: Value(f['checksum'] as String),
          ),
        );
      }
    });
  }

  Future<bool> hasContent() async {
    final count = await _db.surahDao.getAll();
    return count.isNotEmpty;
  }
}
