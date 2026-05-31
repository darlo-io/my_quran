import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/core/logging/app_logger.dart';
import 'package:quran_app/core/network/api_client.dart';

class SyncService {
  final AppDatabase _db;
  final ApiClient _apiClient;
  Timer? _autoSyncTimer;
  bool _isSyncing = false;

  SyncService(this._db, this._apiClient);

  void startAutoSync({Duration interval = const Duration(minutes: 15)}) {
    _autoSyncTimer?.cancel();
    _autoSyncTimer = Timer.periodic(interval, (_) => sync());
    AppLogger.info('Auto sync started (interval: ${interval.inMinutes} min)');
  }

  void stopAutoSync() {
    _autoSyncTimer?.cancel();
    _autoSyncTimer = null;
  }

  Future<Either<Failure, Unit>> sync() async {
    if (_isSyncing) return const Right(unit);
    _isSyncing = true;
    try {
      await _pushChanges();
      await _pullChanges();
      return const Right(unit);
    } catch (e, stack) {
      AppLogger.error('Sync failed', error: e, stackTrace: stack);
      return Left(Failure.unexpected(message: 'Sync failed: $e'));
    } finally {
      _isSyncing = false;
    }
  }

  Future<void> enqueueChange({
    required String entityType,
    required String entityId,
    required String operation,
    required Map<String, dynamic> payload,
  }) async {
    await _db.into(_db.syncQueue).insert(
          SyncQueueCompanion(
            entityType: Value(entityType),
            entityId: Value(entityId),
            operation: Value(operation),
            payload: Value(payload.toString()),
            createdAt: Value(DateTime.now()),
            status: const Value('pending'),
          ),
        );
  }

  Future<void> _pushChanges() async {
    final pending = await (_db.select(_db.syncQueue)
          ..where((t) => t.status.equals('pending'))
          ..limit(50))
        .get();

    if (pending.isEmpty) return;

    for (final item in pending) {
      try {
        await (_db.update(_db.syncQueue)..where((t) => t.id.equals(item.id)))
            .write(const SyncQueueCompanion(status: Value('in_progress')));

        await _apiClient.post('/sync/push', data: {
          'entity_type': item.entityType,
          'entity_id': item.entityId,
          'operation': item.operation,
          'payload': item.payload,
        });

        await (_db.delete(_db.syncQueue)..where((t) => t.id.equals(item.id)))
            .go();
      } catch (e, stack) {
        AppLogger.error('Push failed', error: e, stackTrace: stack);
        await (_db.update(_db.syncQueue)..where((t) => t.id.equals(item.id)))
            .write(const SyncQueueCompanion(status: Value('failed')));
      }
    }
  }

  Future<void> _pullChanges() async {
    try {
      final response = await _apiClient.get('/sync/pull', queryParameters: {
        'since': DateTime.now().subtract(const Duration(days: 30)).toIso8601String(),
      });
      // Process response data
    } catch (e, stack) {
      AppLogger.error('Pull failed', error: e, stackTrace: stack);
    }
  }

  Future<void> _applyServerChange(
    String entityType,
    String entityId,
    Map<String, dynamic> data,
  ) async {
    switch (entityType) {
      case 'bookmark':
        final ayahId = int.tryParse(entityId);
        if (ayahId != null) {
          await _db.into(_db.bookmarks).insertOnConflictUpdate(
                BookmarksCompanion(
                  ayahId: Value(ayahId),
                  note: Value(data['note'] as String?),
                  updatedAt: Value(DateTime.now()),
                  createdAt: Value(DateTime.now()),
                ),
              );
        }
      case 'reading_progress':
        final parts = entityId.split('_');
        if (parts.length == 2) {
          final surahId = int.tryParse(parts[0]);
          final ayahId = int.tryParse(parts[1]);
          if (surahId != null && ayahId != null) {
            await _db.into(_db.readingProgressTable).insertOnConflictUpdate(
                  ReadingProgressTableCompanion(
                    surahId: Value(surahId),
                    ayahId: Value(ayahId),
                    updatedAt: Value(DateTime.now()),
                    lastOpenedAt: Value(DateTime.now()),
                  ),
                );
          }
        }
    }
  }
}

final syncServiceProvider = Provider<SyncService>((ref) {
  final service = SyncService(
    ref.watch(appDatabaseProvider),
    ref.watch(apiClientProvider),
  );
  service.startAutoSync();
  ref.onDispose(() => service.stopAutoSync());
  return service;
});
