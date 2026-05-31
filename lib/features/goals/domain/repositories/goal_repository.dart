import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/goals/domain/entities/reading_goal.dart';

abstract class GoalRepository {
  Future<Either<Failure, List<ReadingGoal>>> getGoals();
  Future<Either<Failure, ReadingGoal>> createGoal(
    String goalType,
    int targetValue,
  );
  Future<Either<Failure, Unit>> updateGoal(ReadingGoal goal);
  Future<Either<Failure, Unit>> deleteGoal(int goalId);
  Future<Either<Failure, GoalProgress>> getTodayProgress(int goalId);
  Future<Either<Failure, Unit>> updateProgress(
    int goalId,
    int currentValue,
  );
}
