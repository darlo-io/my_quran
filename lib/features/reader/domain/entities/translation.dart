import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation.freezed.dart';
part 'translation.g.dart';

@freezed
class Translation with _$Translation {
  const factory Translation({
    required int id,
    required String translationKey,
    required String languageCode,
    required String translatorName,
    required String version,
    required bool enabled,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

@freezed
class TranslationAyah with _$TranslationAyah {
  const factory TranslationAyah({
    required int id,
    required int translationId,
    required int ayahId,
    required String text,
  }) = _TranslationAyah;

  factory TranslationAyah.fromJson(Map<String, dynamic> json) =>
      _$TranslationAyahFromJson(json);
}
