import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/audio/domain/entities/reciter.dart';
import 'package:quran_app/features/audio/domain/repositories/audio_repository.dart';

class GetReciters {
  final AudioRepository _repository;

  GetReciters(this._repository);

  Future<Either<Failure, List<Reciter>>> call() => _repository.getReciters();
}

class GetReciterBySlug {
  final AudioRepository _repository;

  GetReciterBySlug(this._repository);

  Future<Either<Failure, Reciter>> call(String slug) async {
    final result = await _repository.getReciters();
    return result.fold(
      (failure) => Left(failure),
      (reciters) {
        final match = reciters.where((r) => r.slug == slug).firstOrNull;
        if (match == null) {
          return const Left(Failure.notFound(message: 'Чтец не найден'));
        }
        return Right(match);
      },
    );
  }
}

class GetAudioStreamUrl {
  final AudioRepository _repository;

  GetAudioStreamUrl(this._repository);

  Future<Either<Failure, String>> call(int surahId, int reciterId) {
    return _repository.getStreamUrl(surahId, reciterId);
  }
}

class ToggleFavoriteReciter {
  final AudioRepository _repository;

  ToggleFavoriteReciter(this._repository);

  Future<Either<Failure, Unit>> call(int reciterId) {
    return _repository.toggleFavoriteReciter(reciterId);
  }
}

class GetFavoriteReciters {
  final AudioRepository _repository;

  GetFavoriteReciters(this._repository);

  Future<Either<Failure, List<Reciter>>> call() {
    return _repository.getFavoriteReciters();
  }
}
