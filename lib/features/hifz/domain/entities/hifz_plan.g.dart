// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hifz_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HifzPlanImpl _$$HifzPlanImplFromJson(Map<String, dynamic> json) =>
    _$HifzPlanImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      level: json['level'] as String,
      active: json['active'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$HifzPlanImplToJson(_$HifzPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'active': instance.active,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$HifzItemImpl _$$HifzItemImplFromJson(Map<String, dynamic> json) =>
    _$HifzItemImpl(
      id: (json['id'] as num).toInt(),
      planId: (json['planId'] as num).toInt(),
      ayahId: (json['ayahId'] as num).toInt(),
      orderNumber: (json['orderNumber'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$HifzItemImplToJson(_$HifzItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planId': instance.planId,
      'ayahId': instance.ayahId,
      'orderNumber': instance.orderNumber,
      'status': instance.status,
    };

_$ReviewSessionImpl _$$ReviewSessionImplFromJson(Map<String, dynamic> json) =>
    _$ReviewSessionImpl(
      id: (json['id'] as num).toInt(),
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      itemsCount: (json['itemsCount'] as num).toInt(),
    );

Map<String, dynamic> _$$ReviewSessionImplToJson(_$ReviewSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'itemsCount': instance.itemsCount,
    };

_$ReviewResultImpl _$$ReviewResultImplFromJson(Map<String, dynamic> json) =>
    _$ReviewResultImpl(
      id: (json['id'] as num).toInt(),
      sessionId: (json['sessionId'] as num).toInt(),
      hifzItemId: (json['hifzItemId'] as num).toInt(),
      grade: json['grade'] as String,
      reviewedAt: DateTime.parse(json['reviewedAt'] as String),
      nextReviewAt: json['nextReviewAt'] == null
          ? null
          : DateTime.parse(json['nextReviewAt'] as String),
    );

Map<String, dynamic> _$$ReviewResultImplToJson(_$ReviewResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'hifzItemId': instance.hifzItemId,
      'grade': instance.grade,
      'reviewedAt': instance.reviewedAt.toIso8601String(),
      'nextReviewAt': instance.nextReviewAt?.toIso8601String(),
    };
