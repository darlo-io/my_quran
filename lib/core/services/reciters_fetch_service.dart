import 'package:drift/drift.dart' show Value;
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/logging/app_logger.dart';
import 'package:quran_app/features/reader/data/datasources/quran_api_client.dart';

class RecitersFetchService {
  final AppDatabase _db;
  final QuranApiClient _api;

  RecitersFetchService(this._db, this._api);

  Future<void> fetchIfNeeded() async {
    final existing = await _db.reciterDao.getAll();
    if (existing.length > 3) {
      AppLogger.info('Reciters already loaded (${existing.length}), skipping');
      return;
    }

    AppLogger.info('Fetching reciters from API...');

    try {
      final editions = await _api.getAudioEditions();

      for (final edition in editions) {
        await _db.into(_db.reciters).insertOnConflictUpdate(
              RecitersCompanion(
                slug: Value(edition.identifier),
                name: Value(edition.englishName),
                description: Value(edition.name),
              ),
            );
      }

      AppLogger.info('Loaded ${editions.length} reciters');
    } catch (e, stack) {
      AppLogger.error('Failed to fetch reciters', error: e, stackTrace: stack);
    }
  }
}
