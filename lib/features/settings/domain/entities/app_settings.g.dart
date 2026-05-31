// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsImpl _$$AppSettingsImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingsImpl(
      id: (json['id'] as num).toInt(),
      languageCode: json['languageCode'] as String,
      themeMode: json['themeMode'] as String,
      translationKey: json['translationKey'] as String?,
      showTranslation: json['showTranslation'] as bool,
      showTransliteration: json['showTransliteration'] as bool,
      selectedReciter: json['selectedReciter'] as String?,
      audioQuality: json['audioQuality'] as String?,
      notificationsEnabled: json['notificationsEnabled'] as bool,
    );

Map<String, dynamic> _$$AppSettingsImplToJson(_$AppSettingsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'languageCode': instance.languageCode,
      'themeMode': instance.themeMode,
      'translationKey': instance.translationKey,
      'showTranslation': instance.showTranslation,
      'showTransliteration': instance.showTransliteration,
      'selectedReciter': instance.selectedReciter,
      'audioQuality': instance.audioQuality,
      'notificationsEnabled': instance.notificationsEnabled,
    };
