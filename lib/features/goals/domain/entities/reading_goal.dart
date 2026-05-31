import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_goal.freezed.dart';
part 'reading_goal.g.dart';

@freezed
class ReadingGoal with _$ReadingGoal {
  const factory ReadingGoal({
    required int id,
    required String goalType,
    required int targetValue,
    required bool active,
    required DateTime createdAt,
  }) = _ReadingGoal;

  factory ReadingGoal.fromJson(Map<String, dynamic> json) =>
      _$ReadingGoalFromJson(json);
}

enum GoalType { dailyAyahs, dailyPages, dailyMinutes }

@freezed
class GoalProgress with _$GoalProgress {
  const factory GoalProgress({
    required int id,
    required int goalId,
    required DateTime date,
    required int currentValue,
    required bool completed,
  }) = _GoalProgress;

  factory GoalProgress.fromJson(Map<String, dynamic> json) =>
      _$GoalProgressFromJson(json);
}
