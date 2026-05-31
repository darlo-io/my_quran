import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah.freezed.dart';
part 'ayah.g.dart';

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    required int id,
    required int surahId,
    required int ayahNumber,
    required int globalAyahNumber,
    required String arabicText,
    required int pageNumber,
    required int juzNumber,
    required int hizbNumber,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}
