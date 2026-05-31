import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/bookmarks/domain/entities/bookmark.dart';
import 'package:quran_app/features/bookmarks/domain/repositories/bookmark_repository.dart';

class GetBookmarks {
  final BookmarkRepository _repository;

  GetBookmarks(this._repository);

  Future<Either<Failure, List<Bookmark>>> call() {
    return _repository.getBookmarks();
  }
}

class ToggleBookmark {
  final BookmarkRepository _repository;

  ToggleBookmark(this._repository);

  Future<Either<Failure, Unit>> call(int ayahId, {String? note}) async {
    final isBookmarked = await _repository.isBookmarked(ayahId);
    return isBookmarked.fold(
      (failure) => Left(failure),
      (bookmarked) async {
        if (bookmarked) {
          // Find bookmark by ayahId and remove
          final bookmarks = await _repository.getBookmarks();
          return bookmarks.fold(
            (f) => Left(f),
            (list) {
              final match = list.where((b) => b.ayahId == ayahId).firstOrNull;
              if (match != null) {
                return _repository.removeBookmark(match.id);
              }
              return const Right(unit);
            },
          );
        } else {
          final result = await _repository.addBookmark(ayahId, note: note);
          return result.fold(
            (f) => Left(f),
            (_) => const Right(unit),
          );
        }
      },
    );
  }
}
