import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/settings/domain/entities/app_settings.dart';
import 'package:quran_app/features/settings/domain/repositories/settings_repository.dart';

class GetAppSettings {
  final SettingsRepository _repository;
  GetAppSettings(this._repository);
  Future<Either<Failure, AppSettings>> call() => _repository.getSettings();
}

class UpdateThemeMode {
  final SettingsRepository _repository;
  UpdateThemeMode(this._repository);
  // theme mode is handled by ThemeNotifier + SharedPreferences, not Settings repo
}

class UpdateLanguage {
  final SettingsRepository _repository;
  UpdateLanguage(this._repository);
  Future<Either<Failure, Unit>> call(String code) =>
      _repository.updateLanguage(code);
}

class ToggleTranslation {
  final SettingsRepository _repository;
  ToggleTranslation(this._repository);
  Future<Either<Failure, Unit>> call(bool show) =>
      _repository.toggleTranslation(show);
}

class ToggleTransliteration {
  final SettingsRepository _repository;
  ToggleTransliteration(this._repository);
  Future<Either<Failure, Unit>> call(bool show) =>
      _repository.toggleTransliteration(show);
}

class UpdateReciter {
  final SettingsRepository _repository;
  UpdateReciter(this._repository);
  Future<Either<Failure, Unit>> call(String reciterSlug) =>
      _repository.updateReciter(reciterSlug);
}

class ToggleNotifications {
  final SettingsRepository _repository;
  ToggleNotifications(this._repository);
  Future<Either<Failure, Unit>> call(bool enabled) =>
      _repository.toggleNotifications(enabled);
}
