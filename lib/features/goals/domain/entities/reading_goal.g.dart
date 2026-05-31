// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reading_goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadingGoalImpl _$$ReadingGoalImplFromJson(Map<String, dynamic> json) =>
    _$ReadingGoalImpl(
      id: (json['id'] as num).toInt(),
      goalType: json['goalType'] as String,
      targetValue: (json['targetValue'] as num).toInt(),
      active: json['active'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReadingGoalImplToJson(_$ReadingGoalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goalType': instance.goalType,
      'targetValue': instance.targetValue,
      'active': instance.active,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$GoalProgressImpl _$$GoalProgressImplFromJson(Map<String, dynamic> json) =>
    _$GoalProgressImpl(
      id: (json['id'] as num).toInt(),
      goalId: (json['goalId'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      currentValue: (json['currentValue'] as num).toInt(),
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$GoalProgressImplToJson(_$GoalProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goalId': instance.goalId,
      'date': instance.date.toIso8601String(),
      'currentValue': instance.currentValue,
      'completed': instance.completed,
    };
