import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark({
    required int id,
    required int ayahId,
    String? note,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) =>
      _$BookmarkFromJson(json);
}
