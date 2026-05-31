import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_pack.freezed.dart';
part 'content_pack.g.dart';

@freezed
class ContentPack with _$ContentPack {
  const factory ContentPack({
    required int id,
    required String type,
    required String languageCode,
    required String version,
    required int sizeBytes,
    required String checksum,
    required DateTime publishedAt,
  }) = _ContentPack;

  factory ContentPack.fromJson(Map<String, dynamic> json) =>
      _$ContentPackFromJson(json);
}

@freezed
class InstalledPackage with _$InstalledPackage {
  const factory InstalledPackage({
    required int id,
    required int packageId,
    required String installedVersion,
    required DateTime installedAt,
    required String status,
  }) = _InstalledPackage;

  factory InstalledPackage.fromJson(Map<String, dynamic> json) =>
      _$InstalledPackageFromJson(json);
}

@freezed
class DownloadTask with _$DownloadTask {
  const factory DownloadTask({
    required int id,
    required int packageId,
    required String status,
    required int progress,
    required DateTime createdAt,
  }) = _DownloadTask;

  factory DownloadTask.fromJson(Map<String, dynamic> json) =>
      _$DownloadTaskFromJson(json);
}
