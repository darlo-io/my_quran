import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/audio/domain/entities/reciter.dart';
import 'package:quran_app/features/audio/domain/repositories/audio_repository.dart';

class AudioRepositoryImpl implements AudioRepository {
  final AppDatabase _db;

  AudioRepositoryImpl(this._db);

  @override
  Future<Either<Failure, List<Reciter>>> getReciters() async {
    try {
      final data = await _db.reciterDao.getAll();
      return Right(
        data
            .map((d) => Reciter(
                  id: d.id,
                  slug: d.slug,
                  name: d.name,
                  imageUrl: d.imageUrl,
                  description: d.description,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Reciter>> getReciter(int reciterId) async {
    try {
      final reciters = await _db.reciterDao.getAll();
      final data = reciters.where((r) => r.id == reciterId).firstOrNull;
      if (data == null) {
        return const Left(Failure.notFound(message: 'Чтец не найден'));
      }
      return Right(Reciter(
        id: data.id,
        slug: data.slug,
        name: data.name,
        imageUrl: data.imageUrl,
        description: data.description,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<AudioPack>>> getAudioPacks(int reciterId) async {
    try {
      final data = await _db.audioPackDao.getByReciter(reciterId);
      return Right(
        data
            .map((d) => AudioPack(
                  id: d.id,
                  reciterId: d.reciterId,
                  quality: d.quality,
                  sizeBytes: d.sizeBytes,
                  version: d.version,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<AudioFile>>> getAudioFiles(
    int audioPackId,
  ) async {
    try {
      final data = await _db.audioFileDao.getByPack(audioPackId);
      return Right(
        data
            .map((d) => AudioFile(
                  id: d.id,
                  audioPackId: d.audioPackId,
                  surahId: d.surahId,
                  remoteUrl: d.remoteUrl,
                  localPath: d.localPath,
                  durationSeconds: d.durationSeconds,
                  checksum: d.checksum,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, AudioFile>> getAudioFile(
    int surahId,
    int reciterId,
  ) async {
    try {
      final data =
          await _db.audioFileDao.getBySurahAndReciter(surahId, reciterId);
      if (data == null) {
        return const Left(Failure.notFound(message: 'Аудиофайл не найден'));
      }
      return Right(AudioFile(
        id: data.id,
        audioPackId: data.audioPackId,
        surahId: data.surahId,
        remoteUrl: data.remoteUrl,
        localPath: data.localPath,
        durationSeconds: data.durationSeconds,
        checksum: data.checksum,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, String>> getStreamUrl(
    int surahId,
    int reciterId,
  ) async {
    try {
      final data =
          await _db.audioFileDao.getBySurahAndReciter(surahId, reciterId);
      if (data == null) {
        return const Left(Failure.notFound(message: 'Аудиофайл не найден'));
      }
      return Right(data.remoteUrl);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> setLocalPath(
    int audioFileId,
    String localPath,
  ) async {
    try {
      await _db.audioFileDao.updateLocalPath(audioFileId, localPath);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleFavoriteReciter(int reciterId) async {
    try {
      final favorites = await _db.reciterDao.getFavorites();
      final isFavorite = favorites.any((r) => r.id == reciterId);
      if (isFavorite) {
        await _db.reciterDao.removeFavorite(reciterId);
      } else {
        await _db.reciterDao.addFavorite(reciterId);
      }
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<Reciter>>> getFavoriteReciters() async {
    try {
      final data = await _db.reciterDao.getFavorites();
      return Right(
        data
            .map((d) => Reciter(
                  id: d.id,
                  slug: d.slug,
                  name: d.name,
                  imageUrl: d.imageUrl,
                  description: d.description,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final audioRepositoryProvider = Provider<AudioRepository>((ref) {
  return AudioRepositoryImpl(ref.watch(appDatabaseProvider));
});
