import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/search/domain/repositories/search_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchRepositoryImpl implements SearchRepository {
  final AppDatabase _db;
  final SharedPreferences _prefs;

  SearchRepositoryImpl(this._db, this._prefs);

  @override
  Future<Either<Failure, List<SearchResult>>> search(String query) async {
    try {
      final results = await _db.ayahDao.searchArabic(query);

      final searchResults = <SearchResult>[];
      for (final ayah in results) {
        final surah = await _db.surahDao.getById(ayah.surahId);
        searchResults.add(
          SearchResult(
            surahId: ayah.surahId,
            ayahId: ayah.ayahNumber,
            surahName: surah?.nameTranslated ?? surah?.nameEnglish ?? '',
            highlightedText: _highlightQuery(ayah.arabicText, query),
            matchType: 'arabic',
          ),
        );
      }

      await _addToHistory(query);
      return Right(searchResults);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  String _highlightQuery(String text, String query) {
    final escaped = RegExp.escape(query);
    return text.replaceAll(
      RegExp('($escaped)', caseSensitive: false),
      '**\$1**',
    );
  }

  @override
  Future<Either<Failure, List<String>>> getSearchHistory() async {
    try {
      final history = _prefs.getStringList('search_history') ?? [];
      return Right(history);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> addToSearchHistory(String query) async {
    try {
      await _addToHistory(query);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  Future<void> _addToHistory(String query) async {
    final history = _prefs.getStringList('search_history') ?? [];
    history.remove(query);
    history.insert(0, query);
    if (history.length > 20) history.removeLast();
    await _prefs.setStringList('search_history', history);
  }

  @override
  Future<Either<Failure, Unit>> clearSearchHistory() async {
    try {
      await _prefs.remove('search_history');
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<SearchResult>>> searchSurahs(
    String query,
  ) async {
    try {
      final surahs = await _db.surahDao.getAll();
      final matching = surahs.where((s) {
        final lower = query.toLowerCase();
        return s.nameArabic.toLowerCase().contains(lower) ||
            s.nameEnglish.toLowerCase().contains(lower) ||
            s.nameTranslated.toLowerCase().contains(lower);
      }).map((s) => SearchResult(
            surahId: s.number,
            ayahId: 0,
            surahName: s.nameTranslated,
            highlightedText: s.nameArabic,
            matchType: 'surah',
          ));
      return Right(matching.toList());
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  // SharedPreferences is injected via override in bootstrap
  return SearchRepositoryImpl(
    ref.watch(appDatabaseProvider),
    throw UnimplementedError('Use provider override for SharedPreferences'),
  );
});
