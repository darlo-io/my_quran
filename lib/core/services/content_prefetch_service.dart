import 'dart:async';
import 'package:drift/drift.dart' show Value;
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/logging/app_logger.dart';
import 'package:quran_app/features/reader/data/datasources/quran_api_client.dart';

class ContentPrefetchService {
  final AppDatabase _db;
  final QuranApiClient _api;

  ContentPrefetchService(this._db, this._api);

  Future<void> prefetchIfNeeded() async {
    final existing = await _db.surahDao.getAll();
    if (existing.length >= 114) {
      AppLogger.info('All 114 surahs already in DB, skipping prefetch');
      return;
    }

    AppLogger.info('Prefetching ${114 - existing.length} missing surahs...');

    try {
      final surahs = await _api.getAllSurahs();

      for (final surah in surahs) {
        await _db.into(_db.surahs).insertOnConflictUpdate(
              SurahsCompanion(
                id: Value(surah.number),
                number: Value(surah.number),
                nameArabic: Value(surah.name),
                nameEnglish: Value(surah.englishName),
                nameTranslated: Value(surah.englishNameTranslation),
                revelationType: Value(surah.revelationType.toLowerCase()),
                ayahCount: Value(surah.numberOfAyahs),
                sortOrder: Value(surah.number),
              ),
            );

        // Fetch ayahs for this surah
        try {
          final fullSurah = await _api.getSurah(surah.number);
          final ayahs = fullSurah.ayahs ?? [];
          for (final ayah in ayahs) {
            await _db.into(_db.ayahs).insertOnConflictUpdate(
                  AyahsCompanion(
                    surahId: Value(surah.number),
                    ayahNumber: Value(ayah.numberInSurah),
                    globalAyahNumber: Value(ayah.number),
                    arabicText: Value(ayah.text),
                    pageNumber: Value(ayah.page),
                    juzNumber: Value(ayah.juz),
                    hizbNumber: Value(ayah.hizbQuarter),
                  ),
                );
          }
        } catch (e) {
          AppLogger.debug('Failed to fetch ayahs for surah ${surah.number}: $e');
        }

        // Small delay between requests to avoid rate limiting
        await Future.delayed(const Duration(milliseconds: 200));
      }

      // Rebuild FTS index
      try {
        await _db.customStatement(
          "INSERT INTO ayahs_fts(ayahs_fts) VALUES('rebuild')",
        );
      } catch (_) {}

      AppLogger.info('Prefetch complete: ${surahs.length} surahs loaded');
    } catch (e, stack) {
      AppLogger.error('Prefetch failed', error: e, stackTrace: stack);
    }
  }
}
