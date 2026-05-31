import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/audio/domain/entities/reciter.dart';

abstract class AudioRepository {
  Future<Either<Failure, List<Reciter>>> getReciters();
  Future<Either<Failure, Reciter>> getReciter(int reciterId);
  Future<Either<Failure, List<AudioPack>>> getAudioPacks(int reciterId);
  Future<Either<Failure, List<AudioFile>>> getAudioFiles(int audioPackId);
  Future<Either<Failure, AudioFile>> getAudioFile(int surahId, int reciterId);
  Future<Either<Failure, String>> getStreamUrl(int surahId, int reciterId);
  Future<Either<Failure, Unit>> setLocalPath(
    int audioFileId,
    String localPath,
  );
  Future<Either<Failure, Unit>> toggleFavoriteReciter(int reciterId);
  Future<Either<Failure, List<Reciter>>> getFavoriteReciters();
}
