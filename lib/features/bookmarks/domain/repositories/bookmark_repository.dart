import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/bookmarks/domain/entities/bookmark.dart';

abstract class BookmarkRepository {
  Future<Either<Failure, List<Bookmark>>> getBookmarks();
  Future<Either<Failure, Bookmark>> addBookmark(int ayahId, {String? note});
  Future<Either<Failure, Unit>> removeBookmark(int bookmarkId);
  Future<Either<Failure, bool>> isBookmarked(int ayahId);
}
