import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/content/domain/entities/content_pack.dart';
import 'package:quran_app/features/content/domain/repositories/content_repository.dart';

class ContentRepositoryImpl implements ContentRepository {
  final AppDatabase _db;

  ContentRepositoryImpl(this._db);

  @override
  Future<Either<Failure, List<ContentPack>>> getAvailablePackages() async {
    try {
      final data = await _db.contentPackDao.getAvailable();
      return Right(
        data
            .map((d) => ContentPack(
                  id: d.id,
                  type: d.type,
                  languageCode: d.languageCode,
                  version: d.version,
                  sizeBytes: d.sizeBytes,
                  checksum: d.checksum,
                  publishedAt: d.publishedAt,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<InstalledPackage>>> getInstalledPackages() async {
    try {
      final data = await _db.contentPackDao.getInstalled();
      return Right(
        data
            .map((d) => InstalledPackage(
                  id: d.id,
                  packageId: d.packageId,
                  installedVersion: d.installedVersion,
                  installedAt: d.installedAt,
                  status: d.status,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> installPackage(int packageId) async {
    try {
      final pack = await _db.contentPackDao.getById(packageId);
      if (pack == null) {
        return const Left(Failure.notFound(message: 'Пакет не найден'));
      }
      await _db.contentPackDao.install(
        InstalledPackagesCompanion(
          packageId: Value(packageId),
          installedVersion: Value(pack.version),
          installedAt: Value(DateTime.now()),
          status: const Value('installed'),
        ),
      );
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> removePackage(int packageId) async {
    try {
      await _db.contentPackDao.uninstall(packageId);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePackage(int packageId) async {
    try {
      final pack = await _db.contentPackDao.getById(packageId);
      if (pack == null) {
        return const Left(Failure.notFound(message: 'Пакет не найден'));
      }
      await _db.contentPackDao.install(
        InstalledPackagesCompanion(
          packageId: Value(packageId),
          installedVersion: Value(pack.version),
          installedAt: Value(DateTime.now()),
          status: const Value('installed'),
        ),
      );
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<DownloadTask>>> getDownloadTasks() async {
    try {
      final data = await _db.downloadDao.getAll();
      return Right(
        data
            .map((d) => DownloadTask(
                  id: d.id,
                  packageId: d.packageId,
                  status: d.status,
                  progress: d.progress,
                  createdAt: d.createdAt,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> pauseDownload(int taskId) async {
    try {
      await _db.downloadDao.updateStatus(taskId, 'paused', 0);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> resumeDownload(int taskId) async {
    try {
      await _db.downloadDao.updateStatus(taskId, 'downloading', 0);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelDownload(int taskId) async {
    try {
      await _db.downloadDao.deleteById(taskId);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final contentRepositoryProvider = Provider<ContentRepository>((ref) {
  return ContentRepositoryImpl(ref.watch(appDatabaseProvider));
});
