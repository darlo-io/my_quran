import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/hifz/domain/entities/hifz_plan.dart';
import 'package:quran_app/features/hifz/domain/repositories/hifz_repository.dart';

class HifzRepositoryImpl implements HifzRepository {
  final AppDatabase _db;

  HifzRepositoryImpl(this._db);

  @override
  Future<Either<Failure, List<HifzPlan>>> getPlans() async {
    try {
      final data = await _db.hifzDao.getPlans();
      return Right(
        data
            .map((d) => HifzPlan(
                  id: d.id,
                  name: d.name,
                  level: d.level,
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
  Future<Either<Failure, HifzPlan>> createPlan(
    String name,
    String level,
    List<int> ayahIds,
  ) async {
    try {
      final planId = await _db.hifzDao.insertPlan(
        HifzPlansCompanion(
          name: Value(name),
          level: Value(level),
          createdAt: Value(DateTime.now()),
        ),
      );
      final items = ayahIds.asMap().entries.map(
            (e) => HifzItemsCompanion(
              planId: Value(planId),
              ayahId: Value(e.value),
              orderNumber: Value(e.key + 1),
              status: const Value('new'),
            ),
          );
      await _db.hifzDao.insertItems(items.toList());
      return Right(HifzPlan(
        id: planId,
        name: name,
        level: level,
        active: true,
        createdAt: DateTime.now(),
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deletePlan(int planId) async {
    try {
      await _db.hifzDao.deletePlan(planId);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<HifzItem>>> getPlanItems(int planId) async {
    try {
      final data = await _db.hifzDao.getPlanItems(planId);
      return Right(
        data
            .map((d) => HifzItem(
                  id: d.id,
                  planId: d.planId,
                  ayahId: d.ayahId,
                  orderNumber: d.orderNumber,
                  status: d.status,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, List<HifzItem>>> getDueReviews() async {
    try {
      return const Right([]);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, ReviewSession>> startReviewSession() async {
    try {
      return Right(ReviewSession(
        id: 0,
        startedAt: DateTime.now(),
        itemsCount: 0,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> submitReviewResult(
    ReviewResult result,
  ) async {
    try {
      await _db.hifzDao.insertReviewResult(
        ReviewResultsCompanion(
          sessionId: Value(result.sessionId),
          hifzItemId: Value(result.hifzItemId),
          grade: Value(result.grade),
          reviewedAt: Value(result.reviewedAt),
          nextReviewAt: Value(result.nextReviewAt),
        ),
      );
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, HifzStatistics>> getStatistics() async {
    try {
      return const Right(HifzStatistics(
        totalLearned: 0,
        mastered: 0,
        reviewsCompleted: 0,
        retentionRate: 0,
        currentStreak: 0,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final hifzRepositoryProvider = Provider<HifzRepository>((ref) {
  return HifzRepositoryImpl(ref.watch(appDatabaseProvider));
});
