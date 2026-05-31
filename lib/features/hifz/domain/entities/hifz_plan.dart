import 'package:freezed_annotation/freezed_annotation.dart';

part 'hifz_plan.freezed.dart';
part 'hifz_plan.g.dart';

@freezed
class HifzPlan with _$HifzPlan {
  const factory HifzPlan({
    required int id,
    required String name,
    required String level,
    required bool active,
    required DateTime createdAt,
  }) = _HifzPlan;

  factory HifzPlan.fromJson(Map<String, dynamic> json) =>
      _$HifzPlanFromJson(json);
}

@freezed
class HifzItem with _$HifzItem {
  const factory HifzItem({
    required int id,
    required int planId,
    required int ayahId,
    required int orderNumber,
    required String status,
  }) = _HifzItem;

  factory HifzItem.fromJson(Map<String, dynamic> json) =>
      _$HifzItemFromJson(json);
}

enum HifzItemStatus { new_, learning, review, mastered }

@freezed
class ReviewSession with _$ReviewSession {
  const factory ReviewSession({
    required int id,
    required DateTime startedAt,
    DateTime? endedAt,
    required int itemsCount,
  }) = _ReviewSession;

  factory ReviewSession.fromJson(Map<String, dynamic> json) =>
      _$ReviewSessionFromJson(json);
}

@freezed
class ReviewResult with _$ReviewResult {
  const factory ReviewResult({
    required int id,
    required int sessionId,
    required int hifzItemId,
    required String grade,
    required DateTime reviewedAt,
    DateTime? nextReviewAt,
  }) = _ReviewResult;

  factory ReviewResult.fromJson(Map<String, dynamic> json) =>
      _$ReviewResultFromJson(json);
}

enum ReviewGrade { again, hard, good, easy }
