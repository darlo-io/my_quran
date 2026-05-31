// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
  id: (json['id'] as num).toInt(),
  surahId: (json['surahId'] as num).toInt(),
  ayahNumber: (json['ayahNumber'] as num).toInt(),
  globalAyahNumber: (json['globalAyahNumber'] as num).toInt(),
  arabicText: json['arabicText'] as String,
  pageNumber: (json['pageNumber'] as num).toInt(),
  juzNumber: (json['juzNumber'] as num).toInt(),
  hizbNumber: (json['hizbNumber'] as num).toInt(),
);

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahId': instance.surahId,
      'ayahNumber': instance.ayahNumber,
      'globalAyahNumber': instance.globalAyahNumber,
      'arabicText': instance.arabicText,
      'pageNumber': instance.pageNumber,
      'juzNumber': instance.juzNumber,
      'hizbNumber': instance.hizbNumber,
    };
