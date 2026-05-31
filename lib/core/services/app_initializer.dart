import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/logging/app_logger.dart';
import 'package:quran_app/core/services/quran_data_importer.dart';

class AppInitializer {
  final AppDatabase _db;

  AppInitializer(this._db);

  Future<void> initialize() async {
    final importer = QuranDataImporter(_db);

    final hasContent = await importer.hasContent();
    if (hasContent) {
      AppLogger.info('Content already exists, skipping seed');
      return;
    }

    AppLogger.info('First launch: seeding Quran content...');

    try {
      // Load surahs from bundled asset
      final surahsJson =
          await rootBundle.loadString('assets/data/surahs.json');
      final surahs = List<Map<String, dynamic>>.from(
        json.decode(surahsJson) as List,
      );
      await importer.importSurahs(surahs);
      AppLogger.info('Imported ${surahs.length} surahs');

      // Seed sample reciters
      await importer.importReciters(const [
        {
          'slug': 'alafasy',
          'name': 'Mishary Rashid Alafasy',
          'image_url': null,
          'description': null,
        },
        {
          'slug': 'basit',
          'name': 'Abdul Basit',
          'image_url': null,
          'description': null,
        },
        {
          'slug': 'muaiqly',
          'name': 'Maher Al Muaiqly',
          'image_url': null,
          'description': null,
        },
      ]);
      AppLogger.info('Imported 3 default reciters');
    } catch (e, stack) {
      AppLogger.error('Failed to seed content', error: e, stackTrace: stack);
    }
  }
}
