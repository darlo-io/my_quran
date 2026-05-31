import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/content/domain/entities/content_pack.dart';
import 'package:quran_app/features/content/domain/repositories/content_repository.dart';

class GetAvailablePackages {
  final ContentRepository _repository;
  GetAvailablePackages(this._repository);
  Future<Either<Failure, List<ContentPack>>> call() =>
      _repository.getAvailablePackages();
}

class GetInstalledPackages {
  final ContentRepository _repository;
  GetInstalledPackages(this._repository);
  Future<Either<Failure, List<InstalledPackage>>> call() =>
      _repository.getInstalledPackages();
}

class InstallPackage {
  final ContentRepository _repository;
  InstallPackage(this._repository);
  Future<Either<Failure, Unit>> call(int packageId) =>
      _repository.installPackage(packageId);
}

class RemovePackage {
  final ContentRepository _repository;
  RemovePackage(this._repository);
  Future<Either<Failure, Unit>> call(int packageId) =>
      _repository.removePackage(packageId);
}

class GetDownloadTasks {
  final ContentRepository _repository;
  GetDownloadTasks(this._repository);
  Future<Either<Failure, List<DownloadTask>>> call() =>
      _repository.getDownloadTasks();
}

class CancelDownload {
  final ContentRepository _repository;
  CancelDownload(this._repository);
  Future<Either<Failure, Unit>> call(int taskId) =>
      _repository.cancelDownload(taskId);
}
