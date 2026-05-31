import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/domain/entities/reading_progress.dart';
import 'package:quran_app/features/reader/domain/repositories/reader_repository.dart';

class GetLastReadPosition {
  final ReaderRepository _repository;

  GetLastReadPosition(this._repository);

  Future<Either<Failure, ReadingProgress>> call() {
    return _repository.getLastReadPosition();
  }
}
