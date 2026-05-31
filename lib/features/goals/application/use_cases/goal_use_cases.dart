import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/goals/domain/entities/reading_goal.dart';
import 'package:quran_app/features/goals/domain/repositories/goal_repository.dart';

class GetGoals {
  final GoalRepository _repository;

  GetGoals(this._repository);

  Future<Either<Failure, List<ReadingGoal>>> call() {
    return _repository.getGoals();
  }
}

class CreateGoal {
  final GoalRepository _repository;

  CreateGoal(this._repository);

  Future<Either<Failure, ReadingGoal>> call(
    GoalType type,
    int targetValue,
  ) {
    return _repository.createGoal(type.name, targetValue);
  }
}

class UpdateGoalProgress {
  final GoalRepository _repository;

  UpdateGoalProgress(this._repository);

  Future<Either<Failure, Unit>> call(int goalId, int value) {
    return _repository.updateProgress(goalId, value);
  }
}
