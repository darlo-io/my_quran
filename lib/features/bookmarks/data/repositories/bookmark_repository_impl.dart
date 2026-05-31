import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/bookmarks/domain/entities/bookmark.dart';
import 'package:quran_app/features/bookmarks/domain/repositories/bookmark_repository.dart';

class BookmarkRepositoryImpl implements BookmarkRepository {
  final AppDatabase _db;

  BookmarkRepositoryImpl(this._db);

  @override
  Future<Either<Failure, List<Bookmark>>> getBookmarks() async {
    try {
      final data = await _db.bookmarkDao.getAll();
      return Right(
        data
            .map((d) => Bookmark(
                  id: d.id,
                  ayahId: d.ayahId,
                  note: d.note,
                  createdAt: d.createdAt,
                  updatedAt: d.updatedAt,
                ))
            .toList(),
      );
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Bookmark>> addBookmark(
    int ayahId, {
    String? note,
  }) async {
    try {
      final now = DateTime.now();
      final id = await _db.bookmarkDao.insert(
        BookmarksCompanion(
          ayahId: Value(ayahId),
          note: Value(note),
          createdAt: Value(now),
          updatedAt: Value(now),
        ),
      );
      return Right(Bookmark(
        id: id,
        ayahId: ayahId,
        note: note,
        createdAt: now,
        updatedAt: now,
      ));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeBookmark(int bookmarkId) async {
    try {
      await _db.bookmarkDao.deleteById(bookmarkId);
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, bool>> isBookmarked(int ayahId) async {
    try {
      final data = await _db.bookmarkDao.getByAyah(ayahId);
      return Right(data != null);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }
}

final bookmarkRepositoryProvider = Provider<BookmarkRepository>((ref) {
  return BookmarkRepositoryImpl(ref.watch(appDatabaseProvider));
});
