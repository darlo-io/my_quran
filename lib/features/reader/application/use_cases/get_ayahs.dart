import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/repositories/reader_repository.dart';

class GetAyahs {
  final ReaderRepository _repository;

  GetAyahs(this._repository);

  Future<Either<Failure, List<Ayah>>> call(int surahId) {
    return _repository.getAyahs(surahId);
  }
}
