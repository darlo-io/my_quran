import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/settings/domain/entities/app_settings.dart';
import 'package:quran_app/features/settings/domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final AppDatabase _db;

  SettingsRepositoryImpl(this._db);

  @override
  Future<Either<Failure, AppSettings>> getSettings() async {
    try {
      final data = await _db.settingsDao.getSettings();
      if (data == null) {
        await _db.settingsDao.saveSettings(const SettingsCompanion(
          languageCode: Value('ru'),
          themeMode: Value('system'),
          showTranslation: Value(true),
          showTransliteration: Value(false),
          notificationsEnabled: Value(true),
        ));
        return const Right(AppSettings(
          id: 1,
          languageCode: 'ru',
          themeMode: 'system',
          showTranslation: true,
          showTransliteration: false,
          notificationsEnabled: true,
        ));
      }
      return Right(AppSettings(
        id: data.id,
        languageCode: data.languageCode,
        themeMode: data.themeMode,
        translationKey: data.translationKey,
        showTranslation: data.showTranslation,
        showTransliteration: data.showTransliteration,
        selectedReciter: data.selectedReciter,
        audioQuality: data.audioQuality,
        notificationsEnabled: data.notificationsEnabled,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateLanguage(String languageCode) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        languageCode: Value(languageCode),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTranslation(String? key) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        translationKey: Value(key),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleTranslation(bool show) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        showTranslation: Value(show),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleTransliteration(bool show) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        showTransliteration: Value(show),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateReciter(String? slug) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        selectedReciter: Value(slug),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateAudioQuality(String quality) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        audioQuality: Value(quality),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleNotifications(bool enabled) async {
    try {
      await _db.settingsDao.saveSettings(SettingsCompanion(
        notificationsEnabled: Value(enabled),
      ));
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  return SettingsRepositoryImpl(ref.watch(appDatabaseProvider));
});
