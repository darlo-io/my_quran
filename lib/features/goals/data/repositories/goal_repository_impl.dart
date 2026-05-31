import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/goals/domain/entities/reading_goal.dart';
import 'package:quran_app/features/goals/domain/repositories/goal_repository.dart';

class GoalRepositoryImpl implements GoalRepository {
  final AppDatabase _db;

  GoalRepositoryImpl(this._db);

  @override
  Future<Either<Failure, List<ReadingGoal>>> getGoals() async {
    try {
      final data = await _db.goalDao.getActive();
      return Right(
        data
            .map((d) => ReadingGoal(
                  id: d.id,
                  goalType: d.goalType,
                  targetValue: d.targetValue,
                  active: d.active,
                  createdAt: d.createdAt,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, ReadingGoal>> createGoal(
    String goalType,
    int targetValue,
  ) async {
    try {
      final id = await _db.goalDao.insertGoal(
        ReadingGoalsCompanion(
          goalType: Value(goalType),
          targetValue: Value(targetValue),
          createdAt: Value(DateTime.now()),
        ),
      );
      return Right(ReadingGoal(
        id: id,
        goalType: goalType,
        targetValue: targetValue,
        active: true,
        createdAt: DateTime.now(),
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateGoal(ReadingGoal goal) async {
    try {
      await (_db.update(_db.readingGoals)..where((t) => t.id.equals(goal.id)))
          .write(ReadingGoalsCompanion(
        goalType: Value(goal.goalType),
        targetValue: Value(goal.targetValue),
        active: Value(goal.active),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteGoal(int goalId) async {
    try {
      await _db.goalDao.deleteGoal(goalId);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, GoalProgress>> getTodayProgress(int goalId) async {
    try {
      return Right(GoalProgress(
        id: 0,
        goalId: goalId,
        date: DateTime.now(),
        currentValue: 0,
        completed: false,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProgress(
    int goalId,
    int currentValue,
  ) async {
    try {
      final today = DateTime.now().toIso8601String().substring(0, 10);
      await _db.goalDao.upsertProgress(
        GoalProgressCompanion(
          goalId: Value(goalId),
          date: Value(today),
          currentValue: Value(currentValue),
        ),
      );
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final goalRepositoryProvider = Provider<GoalRepository>((ref) {
  return GoalRepositoryImpl(ref.watch(appDatabaseProvider));
});
