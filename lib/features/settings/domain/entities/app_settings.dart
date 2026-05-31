import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    required int id,
    required String languageCode,
    required String themeMode,
    String? translationKey,
    required bool showTranslation,
    required bool showTransliteration,
    String? selectedReciter,
    String? audioQuality,
    required bool notificationsEnabled,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
