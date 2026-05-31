import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quran_app/app/app.dart';
import 'package:quran_app/app/providers.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/logging/app_logger.dart';
import 'package:quran_app/core/services/app_initializer.dart';
import 'package:quran_app/core/services/notification_service.dart';
import 'package:quran_app/core/services/permission_service.dart';
import 'package:quran_app/core/services/content_prefetch_service.dart';
import 'package:quran_app/core/services/reciters_fetch_service.dart';
import 'package:quran_app/features/audio/application/services/audio_session_service.dart';
import 'package:quran_app/features/reader/data/datasources/quran_api_client.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  final prefs = await SharedPreferences.getInstance();

  // Initialize database and seed content
  final db = AppDatabase();
  final initializer = AppInitializer(db);
  await initializer.initialize();

  // Configure audio session
  final audioSession = AudioSessionService();
  await audioSession.configure();

  // Request permissions
  final permissionService = PermissionService();
  await permissionService.requestNotificationPermission();
  await permissionService.requestMediaPermission();

  // Initialize notifications
  final notificationService = NotificationService();
  await notificationService.initialize();

  // Background prefetch (non-blocking)
  final apiClient = QuranApiClient();
  final prefetchService = ContentPrefetchService(db, apiClient);
  unawaited(prefetchService.prefetchIfNeeded());

  final recitersService = RecitersFetchService(db, apiClient);
  unawaited(recitersService.fetchIfNeeded());

  AppLogger.info('Bootstrap complete');

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        appDatabaseProvider.overrideWithValue(db),
      ],
      child: const QuranApp(),
    ),
  );
}
