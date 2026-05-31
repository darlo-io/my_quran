import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/reading_progress.dart'
    as domain;
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/entities/translation.dart';

class ReaderMapper {
  static Surah surahFromData(SurahData data) {
    return Surah(
      id: data.id,
      number: data.number,
      nameArabic: data.nameArabic,
      nameEnglish: data.nameEnglish,
      nameTranslated: data.nameTranslated,
      revelationType: data.revelationType,
      ayahCount: data.ayahCount,
      sortOrder: data.sortOrder,
    );
  }

  static Ayah ayahFromData(AyahData data) {
    return Ayah(
      id: data.id,
      surahId: data.surahId,
      ayahNumber: data.ayahNumber,
      globalAyahNumber: data.globalAyahNumber,
      arabicText: data.arabicText,
      pageNumber: data.pageNumber,
      juzNumber: data.juzNumber,
      hizbNumber: data.hizbNumber,
    );
  }

  static Translation translationFromData(TranslationData data) {
    return Translation(
      id: data.id,
      translationKey: data.translationKey,
      languageCode: data.languageCode,
      translatorName: data.translatorName,
      version: data.version,
      enabled: data.enabled,
    );
  }

  static TranslationAyah translationAyahFromData(TranslationAyahData data) {
    return TranslationAyah(
      id: data.id,
      translationId: data.translationId,
      ayahId: data.ayahId,
      text: data.translationText,
    );
  }

  static domain.ReadingProgress readingProgressFromData(
    ReadingProgressData data,
  ) {
    return domain.ReadingProgress(
      id: data.id,
      surahId: data.surahId,
      ayahId: data.ayahId,
      completed: data.completed,
      lastOpenedAt: data.lastOpenedAt,
      updatedAt: data.updatedAt,
    );
  }

  static domain.ReadingSession readingSessionFromData(
    ReadingSessionData data,
  ) {
    return domain.ReadingSession(
      id: data.id,
      startedAt: data.startedAt,
      endedAt: data.endedAt,
      surahId: data.surahId,
      ayahsRead: data.ayahsRead,
      durationSeconds: data.durationSeconds,
    );
  }
}
