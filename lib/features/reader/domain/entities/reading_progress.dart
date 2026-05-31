import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_progress.freezed.dart';
part 'reading_progress.g.dart';

@freezed
class ReadingProgress with _$ReadingProgress {
  const factory ReadingProgress({
    required int id,
    required int surahId,
    required int ayahId,
    required bool completed,
    required DateTime lastOpenedAt,
    required DateTime updatedAt,
  }) = _ReadingProgress;

  factory ReadingProgress.fromJson(Map<String, dynamic> json) =>
      _$ReadingProgressFromJson(json);
}

@freezed
class ReadingSession with _$ReadingSession {
  const factory ReadingSession({
    required int id,
    required DateTime startedAt,
    DateTime? endedAt,
    required int surahId,
    required int ayahsRead,
    required int durationSeconds,
  }) = _ReadingSession;

  factory ReadingSession.fromJson(Map<String, dynamic> json) =>
      _$ReadingSessionFromJson(json);
}
