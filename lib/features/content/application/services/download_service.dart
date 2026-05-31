import 'dart:async';
import 'package:drift/drift.dart' show Value;
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/logging/app_logger.dart';

class DownloadService {
  final AppDatabase _db;

  DownloadService(this._db);

  Future<void> initialize() async {
    await FlutterDownloader.initialize(
      debug: false,
      ignoreSsl: false,
    );

    FlutterDownloader.registerCallback(_downloadCallback, step: 1);
  }

  static void _downloadCallback(
    String id,
    int status,
    int progress,
  ) {
    // This runs in an isolate — no DB access here
    // Use a port or event channel to communicate back to main isolate
  }
}
