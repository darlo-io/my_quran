import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';

class SearchResult {
  final int surahId;
  final int ayahId;
  final String surahName;
  final String highlightedText;
  final String matchType;

  const SearchResult({
    required this.surahId,
    required this.ayahId,
    required this.surahName,
    required this.highlightedText,
    required this.matchType,
  });
}

abstract class SearchRepository {
  Future<Either<Failure, List<SearchResult>>> search(String query);
  Future<Either<Failure, List<String>>> getSearchHistory();
  Future<Either<Failure, Unit>> addToSearchHistory(String query);
  Future<Either<Failure, Unit>> clearSearchHistory();
  Future<Either<Failure, List<SearchResult>>> searchSurahs(String query);
}
