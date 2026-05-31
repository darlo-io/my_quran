// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reciter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReciterImpl _$$ReciterImplFromJson(Map<String, dynamic> json) =>
    _$ReciterImpl(
      id: (json['id'] as num).toInt(),
      slug: json['slug'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ReciterImplToJson(_$ReciterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
    };

_$AudioPackImpl _$$AudioPackImplFromJson(Map<String, dynamic> json) =>
    _$AudioPackImpl(
      id: (json['id'] as num).toInt(),
      reciterId: (json['reciterId'] as num).toInt(),
      quality: json['quality'] as String,
      sizeBytes: (json['sizeBytes'] as num).toInt(),
      version: json['version'] as String,
    );

Map<String, dynamic> _$$AudioPackImplToJson(_$AudioPackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reciterId': instance.reciterId,
      'quality': instance.quality,
      'sizeBytes': instance.sizeBytes,
      'version': instance.version,
    };

_$AudioFileImpl _$$AudioFileImplFromJson(Map<String, dynamic> json) =>
    _$AudioFileImpl(
      id: (json['id'] as num).toInt(),
      audioPackId: (json['audioPackId'] as num).toInt(),
      surahId: (json['surahId'] as num).toInt(),
      remoteUrl: json['remoteUrl'] as String,
      localPath: json['localPath'] as String?,
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      checksum: json['checksum'] as String,
    );

Map<String, dynamic> _$$AudioFileImplToJson(_$AudioFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'audioPackId': instance.audioPackId,
      'surahId': instance.surahId,
      'remoteUrl': instance.remoteUrl,
      'localPath': instance.localPath,
      'durationSeconds': instance.durationSeconds,
      'checksum': instance.checksum,
    };
