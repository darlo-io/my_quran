import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/features/reader/data/repositories/reader_repository_impl.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/entities/translation.dart';

// Surah list state
final surahListProvider = FutureProvider<List<Surah>>((ref) async {
  final repo = ref.watch(readerRepositoryProvider);
  final result = await repo.getSurahs();
  return result.fold(
    (failure) => throw Exception(failure.message),
    (surahs) => surahs,
  );
});

// Single surah with ayahs
final surahDetailProvider =
    FutureProvider.family<Surah, int>((ref, surahId) async {
  final repo = ref.watch(readerRepositoryProvider);
  final result = await repo.getSurah(surahId);
  return result.fold(
    (failure) => throw Exception(failure.message),
    (surah) => surah,
  );
});

// Ayahs for a surah
final ayahsProvider = FutureProvider.family<List<Ayah>, int>((ref, surahId) async {
  final repo = ref.watch(readerRepositoryProvider);
  final result = await repo.getAyahs(surahId);
  return result.fold(
    (failure) => throw Exception(failure.message),
    (ayahs) => ayahs,
  );
});

// Installed translations
final installedTranslationsProvider =
    FutureProvider<List<Translation>>((ref) async {
  final repo = ref.watch(readerRepositoryProvider);
  final result = await repo.getInstalledTranslations();
  return result.fold(
    (failure) => throw Exception(failure.message),
    (translations) => translations,
  );
});

// Translation ayahs map for a surah (ayahId -> text)
final translationMapProvider =
    FutureProvider.family<Map<int, String>, int>((ref, surahId) async {
  final repo = ref.watch(readerRepositoryProvider);
  final result = await repo.getTranslationAyahs(0, surahId);
  return result.fold(
    (_) => {},
    (list) => {
      for (final t in list) t.ayahId: t.text,
    },
  );
});

// Reader mode state (line by line vs continuous)
final readerModeProvider = StateProvider<String>((ref) => 'line_by_line');
final showTranslationProvider = StateProvider<bool>((ref) => true);
final showTransliterationProvider = StateProvider<bool>((ref) => false);
final selectedTranslationProvider = StateProvider<int?>((ref) => null);
final fontSizeProvider = StateProvider<double>((ref) => 22.0);

// Continue reading
final lastReadPositionProvider = FutureProvider<Surah?>((ref) async {
  final repo = ref.watch(readerRepositoryProvider);
  final result = await repo.getLastReadPosition();
  return result.fold(
    (failure) => null,
    (progress) async {
      final surahResult = await repo.getSurah(progress.surahId);
      return surahResult.fold((l) => null, (s) => s);
    },
  );
});

// Bookmark state for individual ayah (uses DAO directly from core - allowed)
final ayahBookmarkProvider = FutureProvider.family<bool, int>((ref, ayahId) async {
  final db = ref.watch(appDatabaseProvider);
  try {
    final bookmark = await db.bookmarkDao.getByAyah(ayahId);
    return bookmark != null;
  } catch (_) {
    return false;
  }
});
