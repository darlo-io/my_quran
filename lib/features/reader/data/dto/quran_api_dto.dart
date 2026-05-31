import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_api_dto.freezed.dart';
part 'quran_api_dto.g.dart';

// --- Response wrapper ---
@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required int code,
    required String status,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}

// --- List Response ---
@freezed
class ApiListResponse with _$ApiListResponse {
  const factory ApiListResponse({
    required int code,
    required String status,
    required List<Map<String, dynamic>> data,
  }) = _ApiListResponse;

  factory ApiListResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiListResponseFromJson(json);
}

// --- Surah ---
@freezed
class ApiSurah with _$ApiSurah {
  const factory ApiSurah({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required int numberOfAyahs,
    List<ApiAyah>? ayahs,
  }) = _ApiSurah;

  factory ApiSurah.fromJson(Map<String, dynamic> json) =>
      _$ApiSurahFromJson(json);
}

// --- Ayah ---
@freezed
class ApiAyah with _$ApiAyah {
  const factory ApiAyah({
    required int number,
    required String text,
    required int numberInSurah,
    required int juz,
    required int page,
    required int hizbQuarter,
    bool? sajda,
  }) = _ApiAyah;

  factory ApiAyah.fromJson(Map<String, dynamic> json) =>
      _$ApiAyahFromJson(json);
}

// --- Edition (translation/transliteration) ---
@freezed
class ApiEdition with _$ApiEdition {
  const factory ApiEdition({
    required String identifier,
    required String language,
    required String name,
    required String englishName,
    required String format,
    required String type,
  }) = _ApiEdition;

  factory ApiEdition.fromJson(Map<String, dynamic> json) =>
      _$ApiEditionFromJson(json);
}

// --- Ayah with edition ---
@freezed
class ApiEditionAyah with _$ApiEditionAyah {
  const factory ApiEditionAyah({
    required int number,
    required String text,
    required int numberInSurah,
  }) = _ApiEditionAyah;

  factory ApiEditionAyah.fromJson(Map<String, dynamic> json) =>
      _$ApiEditionAyahFromJson(json);
}

// --- Edition surah ---
@freezed
class ApiEditionSurah with _$ApiEditionSurah {
  const factory ApiEditionSurah({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    List<ApiEditionAyah>? ayahs,
  }) = _ApiEditionSurah;

  factory ApiEditionSurah.fromJson(Map<String, dynamic> json) =>
      _$ApiEditionSurahFromJson(json);
}

// --- Audio file ---
@freezed
class ApiAudioFile with _$ApiAudioFile {
  const factory ApiAudioFile({
    required int number,
    required String audio,
    required int numberInSurah,
  }) = _ApiAudioFile;

  factory ApiAudioFile.fromJson(Map<String, dynamic> json) =>
      _$ApiAudioFileFromJson(json);
}

// --- Audio surah ---
@freezed
class ApiAudioSurah with _$ApiAudioSurah {
  const factory ApiAudioSurah({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    List<ApiAudioFile>? ayahs,
  }) = _ApiAudioSurah;

  factory ApiAudioSurah.fromJson(Map<String, dynamic> json) =>
      _$ApiAudioSurahFromJson(json);
}
