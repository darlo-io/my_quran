import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/hifz/domain/entities/hifz_plan.dart';

abstract class HifzRepository {
  Future<Either<Failure, List<HifzPlan>>> getPlans();
  Future<Either<Failure, HifzPlan>> createPlan(
    String name,
    String level,
    List<int> ayahIds,
  );
  Future<Either<Failure, Unit>> deletePlan(int planId);
  Future<Either<Failure, List<HifzItem>>> getPlanItems(int planId);
  Future<Either<Failure, List<HifzItem>>> getDueReviews();
  Future<Either<Failure, ReviewSession>> startReviewSession();
  Future<Either<Failure, Unit>> submitReviewResult(ReviewResult result);
  Future<Either<Failure, HifzStatistics>> getStatistics();
}

class HifzStatistics {
  final int totalLearned;
  final int mastered;
  final int reviewsCompleted;
  final double retentionRate;
  final int currentStreak;

  const HifzStatistics({
    required this.totalLearned,
    required this.mastered,
    required this.reviewsCompleted,
    required this.retentionRate,
    required this.currentStreak,
  });
}
