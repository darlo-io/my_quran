import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/repositories/reader_repository.dart';

class GetSurahs {
  final ReaderRepository _repository;

  GetSurahs(this._repository);

  Future<Either<Failure, List<Surah>>> call() {
    return _repository.getSurahs();
  }
}
