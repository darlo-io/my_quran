import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/settings/domain/entities/app_settings.dart';

abstract class SettingsRepository {
  Future<Either<Failure, AppSettings>> getSettings();
  Future<Either<Failure, Unit>> updateLanguage(String languageCode);
  Future<Either<Failure, Unit>> updateTranslation(String? translationKey);
  Future<Either<Failure, Unit>> toggleTranslation(bool show);
  Future<Either<Failure, Unit>> toggleTransliteration(bool show);
  Future<Either<Failure, Unit>> updateReciter(String? reciterSlug);
  Future<Either<Failure, Unit>> updateAudioQuality(String quality);
  Future<Either<Failure, Unit>> toggleNotifications(bool enabled);
}
