// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingProgressImpl _$$ReadingProgressImplFromJson(
  Map<String, dynamic> json,
) => _$ReadingProgressImpl(
  id: (json['id'] as num).toInt(),
  surahId: (json['surahId'] as num).toInt(),
  ayahId: (json['ayahId'] as num).toInt(),
  completed: json['completed'] as bool,
  lastOpenedAt: DateTime.parse(json['lastOpenedAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$ReadingProgressImplToJson(
  _$ReadingProgressImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'surahId': instance.surahId,
  'ayahId': instance.ayahId,
  'completed': instance.completed,
  'lastOpenedAt': instance.lastOpenedAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

_$ReadingSessionImpl _$$ReadingSessionImplFromJson(Map<String, dynamic> json) =>
    _$ReadingSessionImpl(
      id: (json['id'] as num).toInt(),
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      surahId: (json['surahId'] as num).toInt(),
      ayahsRead: (json['ayahsRead'] as num).toInt(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$$ReadingSessionImplToJson(
  _$ReadingSessionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'startedAt': instance.startedAt.toIso8601String(),
  'endedAt': instance.endedAt?.toIso8601String(),
  'surahId': instance.surahId,
  'ayahsRead': instance.ayahsRead,
  'durationSeconds': instance.durationSeconds,
};
