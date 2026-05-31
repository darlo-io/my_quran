import 'package:freezed_annotation/freezed_annotation.dart';

part 'reciter.freezed.dart';
part 'reciter.g.dart';

@freezed
class Reciter with _$Reciter {
  const factory Reciter({
    required int id,
    required String slug,
    required String name,
    String? imageUrl,
    String? description,
  }) = _Reciter;

  factory Reciter.fromJson(Map<String, dynamic> json) =>
      _$ReciterFromJson(json);
}

@freezed
class AudioPack with _$AudioPack {
  const factory AudioPack({
    required int id,
    required int reciterId,
    required String quality,
    required int sizeBytes,
    required String version,
  }) = _AudioPack;

  factory AudioPack.fromJson(Map<String, dynamic> json) =>
      _$AudioPackFromJson(json);
}

@freezed
class AudioFile with _$AudioFile {
  const factory AudioFile({
    required int id,
    required int audioPackId,
    required int surahId,
    required String remoteUrl,
    String? localPath,
    required int durationSeconds,
    required String checksum,
  }) = _AudioFile;

  factory AudioFile.fromJson(Map<String, dynamic> json) =>
      _$AudioFileFromJson(json);
}
