import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/search/domain/repositories/search_repository.dart';

class SearchQuran {
  final SearchRepository _repository;

  SearchQuran(this._repository);

  Future<Either<Failure, List<SearchResult>>> call(String query) {
    return _repository.search(query);
  }
}

class GetSearchHistory {
  final SearchRepository _repository;

  GetSearchHistory(this._repository);

  Future<Either<Failure, List<String>>> call() {
    return _repository.getSearchHistory();
  }
}

class ClearSearchHistory {
  final SearchRepository _repository;

  ClearSearchHistory(this._repository);

  Future<Either<Failure, Unit>> call() {
    return _repository.clearSearchHistory();
  }
}
