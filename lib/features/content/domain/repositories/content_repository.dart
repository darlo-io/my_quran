import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/content/domain/entities/content_pack.dart';

abstract class ContentRepository {
  Future<Either<Failure, List<ContentPack>>> getAvailablePackages();
  Future<Either<Failure, List<InstalledPackage>>> getInstalledPackages();
  Future<Either<Failure, Unit>> installPackage(int packageId);
  Future<Either<Failure, Unit>> removePackage(int packageId);
  Future<Either<Failure, Unit>> updatePackage(int packageId);
  Future<Either<Failure, List<DownloadTask>>> getDownloadTasks();
  Future<Either<Failure, Unit>> pauseDownload(int taskId);
  Future<Either<Failure, Unit>> resumeDownload(int taskId);
  Future<Either<Failure, Unit>> cancelDownload(int taskId);
}
