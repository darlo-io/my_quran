// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslationImpl _$$TranslationImplFromJson(Map<String, dynamic> json) =>
    _$TranslationImpl(
      id: (json['id'] as num).toInt(),
      translationKey: json['translationKey'] as String,
      languageCode: json['languageCode'] as String,
      translatorName: json['translatorName'] as String,
      version: json['version'] as String,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$$TranslationImplToJson(_$TranslationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'translationKey': instance.translationKey,
      'languageCode': instance.languageCode,
      'translatorName': instance.translatorName,
      'version': instance.version,
      'enabled': instance.enabled,
    };

_$TranslationAyahImpl _$$TranslationAyahImplFromJson(
  Map<String, dynamic> json,
) => _$TranslationAyahImpl(
  id: (json['id'] as num).toInt(),
  translationId: (json['translationId'] as num).toInt(),
  ayahId: (json['ayahId'] as num).toInt(),
  text: json['text'] as String,
);

Map<String, dynamic> _$$TranslationAyahImplToJson(
  _$TranslationAyahImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'translationId': instance.translationId,
  'ayahId': instance.ayahId,
  'text': instance.text,
};
