import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/hifz/domain/entities/hifz_plan.dart';
import 'package:quran_app/features/hifz/domain/repositories/hifz_repository.dart';

class GetPlans {
  final HifzRepository _repository;

  GetPlans(this._repository);

  Future<Either<Failure, List<HifzPlan>>> call() {
    return _repository.getPlans();
  }
}

class CreatePlan {
  final HifzRepository _repository;

  CreatePlan(this._repository);

  Future<Either<Failure, HifzPlan>> call(
    String name,
    String level,
    List<int> ayahIds,
  ) {
    return _repository.createPlan(name, level, ayahIds);
  }
}

class DeletePlan {
  final HifzRepository _repository;

  DeletePlan(this._repository);

  Future<Either<Failure, Unit>> call(int planId) {
    return _repository.deletePlan(planId);
  }
}

class GetDueReviews {
  final HifzRepository _repository;

  GetDueReviews(this._repository);

  Future<Either<Failure, List<HifzItem>>> call() {
    return _repository.getDueReviews();
  }
}

class StartReviewSession {
  final HifzRepository _repository;

  StartReviewSession(this._repository);

  Future<Either<Failure, ReviewSession>> call() {
    return _repository.startReviewSession();
  }
}

class SubmitReview {
  final HifzRepository _repository;

  SubmitReview(this._repository);

  Future<Either<Failure, Unit>> call(ReviewGrade grade, HifzItem item) {
    final now = DateTime.now();
    final nextReview = SmsTwo.calculateNextReview(grade, item.status);

    final result = ReviewResult(
      id: 0,
      sessionId: 0,
      hifzItemId: item.id,
      grade: grade.name,
      reviewedAt: now,
      nextReviewAt: nextReview,
    );

    return _repository.submitReviewResult(result);
  }
}

class SmsTwo {
  static const double _easyBonus = 1.3;
  static const double _intervalModifier = 1.0;

  static DateTime calculateNextReview(ReviewGrade grade, String currentStatus) {
    final now = DateTime.now();

    return switch (grade) {
      ReviewGrade.again => now.add(const Duration(minutes: 10)),
      ReviewGrade.hard => now.add(const Duration(hours: 6)),
      ReviewGrade.good => switch (currentStatus) {
          'new' => now.add(const Duration(days: 1)),
          'learning' => now.add(const Duration(days: 3)),
          _ => now.add(const Duration(days: 7)),
        },
      ReviewGrade.easy => switch (currentStatus) {
          'new' => now.add(const Duration(days: 4)),
          'learning' => now.add(const Duration(days: 14)),
          _ => now.add(const Duration(days: 30)),
        },
    };
  }
}
