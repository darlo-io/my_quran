// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
  id: (json['id'] as num).toInt(),
  number: (json['number'] as num).toInt(),
  nameArabic: json['nameArabic'] as String,
  nameEnglish: json['nameEnglish'] as String,
  nameTranslated: json['nameTranslated'] as String,
  revelationType: json['revelationType'] as String,
  ayahCount: (json['ayahCount'] as num).toInt(),
  sortOrder: (json['sortOrder'] as num).toInt(),
);

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'nameArabic': instance.nameArabic,
      'nameEnglish': instance.nameEnglish,
      'nameTranslated': instance.nameTranslated,
      'revelationType': instance.revelationType,
      'ayahCount': instance.ayahCount,
      'sortOrder': instance.sortOrder,
    };
