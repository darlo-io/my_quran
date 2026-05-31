import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/reading_progress.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/entities/translation.dart';
import 'package:dartz/dartz.dart';

abstract class ReaderRepository {
  Future<Either<Failure, List<Surah>>> getSurahs();
  Future<Either<Failure, Surah>> getSurah(int surahId);
  Future<Either<Failure, List<Ayah>>> getAyahs(int surahId);
  Future<Either<Failure, Ayah>> getAyah(int surahId, int ayahNumber);
  Future<Either<Failure, List<Translation>>> getInstalledTranslations();
  Future<Either<Failure, List<TranslationAyah>>> getTranslationAyahs(
    int translationId,
    int surahId,
  );
  Future<Either<Failure, ReadingProgress?>> getReadingProgress(int surahId);
  Future<Either<Failure, Unit>> saveReadingProgress(ReadingProgress progress);
  Future<Either<Failure, ReadingProgress>> getLastReadPosition();
  Future<Either<Failure, Unit>> saveReadingSession(ReadingSession session);
}
