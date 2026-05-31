// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_api_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseImpl _$$ApiResponseImplFromJson(Map<String, dynamic> json) =>
    _$ApiResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$ApiResponseImplToJson(_$ApiResponseImpl instance) =>
    <String, dynamic>{'code': instance.code, 'status': instance.status};

_$ApiListResponseImpl _$$ApiListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ApiListResponseImpl(
  code: (json['code'] as num).toInt(),
  status: json['status'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$$ApiListResponseImplToJson(
  _$ApiListResponseImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'status': instance.status,
  'data': instance.data,
};

_$ApiSurahImpl _$$ApiSurahImplFromJson(Map<String, dynamic> json) =>
    _$ApiSurahImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      numberOfAyahs: (json['numberOfAyahs'] as num).toInt(),
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => ApiAyah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApiSurahImplToJson(_$ApiSurahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs,
    };

_$ApiAyahImpl _$$ApiAyahImplFromJson(Map<String, dynamic> json) =>
    _$ApiAyahImpl(
      number: (json['number'] as num).toInt(),
      text: json['text'] as String,
      numberInSurah: (json['numberInSurah'] as num).toInt(),
      juz: (json['juz'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      hizbQuarter: (json['hizbQuarter'] as num).toInt(),
      sajda: json['sajda'] as bool?,
    );

Map<String, dynamic> _$$ApiAyahImplToJson(_$ApiAyahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'numberInSurah': instance.numberInSurah,
      'juz': instance.juz,
      'page': instance.page,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda,
    };

_$ApiEditionImpl _$$ApiEditionImplFromJson(Map<String, dynamic> json) =>
    _$ApiEditionImpl(
      identifier: json['identifier'] as String,
      language: json['language'] as String,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      format: json['format'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ApiEditionImplToJson(_$ApiEditionImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
    };

_$ApiEditionAyahImpl _$$ApiEditionAyahImplFromJson(Map<String, dynamic> json) =>
    _$ApiEditionAyahImpl(
      number: (json['number'] as num).toInt(),
      text: json['text'] as String,
      numberInSurah: (json['numberInSurah'] as num).toInt(),
    );

Map<String, dynamic> _$$ApiEditionAyahImplToJson(
  _$ApiEditionAyahImpl instance,
) => <String, dynamic>{
  'number': instance.number,
  'text': instance.text,
  'numberInSurah': instance.numberInSurah,
};

_$ApiEditionSurahImpl _$$ApiEditionSurahImplFromJson(
  Map<String, dynamic> json,
) => _$ApiEditionSurahImpl(
  number: (json['number'] as num).toInt(),
  name: json['name'] as String,
  englishName: json['englishName'] as String,
  englishNameTranslation: json['englishNameTranslation'] as String,
  revelationType: json['revelationType'] as String,
  ayahs: (json['ayahs'] as List<dynamic>?)
      ?.map((e) => ApiEditionAyah.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ApiEditionSurahImplToJson(
  _$ApiEditionSurahImpl instance,
) => <String, dynamic>{
  'number': instance.number,
  'name': instance.name,
  'englishName': instance.englishName,
  'englishNameTranslation': instance.englishNameTranslation,
  'revelationType': instance.revelationType,
  'ayahs': instance.ayahs,
};

_$ApiAudioFileImpl _$$ApiAudioFileImplFromJson(Map<String, dynamic> json) =>
    _$ApiAudioFileImpl(
      number: (json['number'] as num).toInt(),
      audio: json['audio'] as String,
      numberInSurah: (json['numberInSurah'] as num).toInt(),
    );

Map<String, dynamic> _$$ApiAudioFileImplToJson(_$ApiAudioFileImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'audio': instance.audio,
      'numberInSurah': instance.numberInSurah,
    };

_$ApiAudioSurahImpl _$$ApiAudioSurahImplFromJson(Map<String, dynamic> json) =>
    _$ApiAudioSurahImpl(
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      englishNameTranslation: json['englishNameTranslation'] as String,
      revelationType: json['revelationType'] as String,
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => ApiAudioFile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApiAudioSurahImplToJson(_$ApiAudioSurahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'englishName': instance.englishName,
      'englishNameTranslation': instance.englishNameTranslation,
      'revelationType': instance.revelationType,
      'ayahs': instance.ayahs,
    };
