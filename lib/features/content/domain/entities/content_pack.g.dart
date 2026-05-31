// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_pack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentPackImpl _$$ContentPackImplFromJson(Map<String, dynamic> json) =>
    _$ContentPackImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      languageCode: json['languageCode'] as String,
      version: json['version'] as String,
      sizeBytes: (json['sizeBytes'] as num).toInt(),
      checksum: json['checksum'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$$ContentPackImplToJson(_$ContentPackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'languageCode': instance.languageCode,
      'version': instance.version,
      'sizeBytes': instance.sizeBytes,
      'checksum': instance.checksum,
      'publishedAt': instance.publishedAt.toIso8601String(),
    };

_$InstalledPackageImpl _$$InstalledPackageImplFromJson(
  Map<String, dynamic> json,
) => _$InstalledPackageImpl(
  id: (json['id'] as num).toInt(),
  packageId: (json['packageId'] as num).toInt(),
  installedVersion: json['installedVersion'] as String,
  installedAt: DateTime.parse(json['installedAt'] as String),
  status: json['status'] as String,
);

Map<String, dynamic> _$$InstalledPackageImplToJson(
  _$InstalledPackageImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'packageId': instance.packageId,
  'installedVersion': instance.installedVersion,
  'installedAt': instance.installedAt.toIso8601String(),
  'status': instance.status,
};

_$DownloadTaskImpl _$$DownloadTaskImplFromJson(Map<String, dynamic> json) =>
    _$DownloadTaskImpl(
      id: (json['id'] as num).toInt(),
      packageId: (json['packageId'] as num).toInt(),
      status: json['status'] as String,
      progress: (json['progress'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$DownloadTaskImplToJson(_$DownloadTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'packageId': instance.packageId,
      'status': instance.status,
      'progress': instance.progress,
      'createdAt': instance.createdAt.toIso8601String(),
    };
