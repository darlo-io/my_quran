import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  const factory Surah({
    required int id,
    required int number,
    required String nameArabic,
    required String nameEnglish,
    required String nameTranslated,
    required String revelationType,
    required int ayahCount,
    required int sortOrder,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}
