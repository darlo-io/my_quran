import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/data/datasources/quran_api_client.dart';
import 'package:quran_app/features/reader/data/dto/quran_api_dto.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/entities/translation.dart';

class QuranRemoteDataSource {
  final QuranApiClient _client;

  QuranRemoteDataSource(this._client);

  Future<Either<Failure, List<Surah>>> getAllSurahs() async {
    try {
      final surahs = await _client.getAllSurahs();
      final result = surahs.map((s) => _mapSurah(s)).toList();
      return Right(result);
    } catch (e) {
      return Left(Failure.networkError(message: 'Failed to load surahs: $e'));
    }
  }

  Future<Either<Failure, Surah>> getSurah(int number) async {
    try {
      final surah = await _client.getSurah(number);
      return Right(_mapSurah(surah));
    } catch (e) {
      return Left(Failure.networkError(message: 'Failed to load surah: $e'));
    }
  }

  Future<Either<Failure, List<Ayah>>> getAyahs(int surahNumber) async {
    try {
      final surah = await _client.getSurah(surahNumber);
      final ayahs = surah.ayahs?.map((a) => _mapAyah(a)).toList() ?? [];
      return Right(ayahs);
    } catch (e) {
      return Left(Failure.networkError(message: 'Failed to load ayahs: $e'));
    }
  }

  Future<Either<Failure, List<TranslationAyah>>> getTranslationAyahs(
    int surahNumber,
    String edition,
  ) async {
    try {
      final surah = await _client.getSurahWithEdition(surahNumber, edition);
      final ayahs = surah.ayahs
              ?.map((a) => TranslationAyah(
                    id: a.number,
                    translationId: 0,
                    ayahId: a.numberInSurah,
                    text: a.text,
                  ))
              .toList() ??
          [];
      return Right(ayahs);
    } catch (e) {
      return Left(
        Failure.networkError(message: 'Failed to load translation: $e'),
      );
    }
  }

  Future<Either<Failure, List<Translation>>> getAvailableTranslations() async {
    try {
      final editions =
          await _client.getEditions(format: 'text', type: 'translation');
      final translations = editions.map((e) {
        return Translation(
          id: e.identifier.hashCode,
          translationKey: e.identifier,
          languageCode: e.language,
          translatorName: e.englishName,
          version: '1.0',
          enabled: false,
        );
      }).toList();
      return Right(translations);
    } catch (e) {
      return Left(
        Failure.networkError(message: 'Failed to load editions: $e'),
      );
    }
  }

  Future<Either<Failure, List<String>>> getAudioUrls(
    int surahNumber,
    String reciter,
  ) async {
    try {
      final surah = await _client.getSurahAudio(surahNumber, reciter);
      final urls = surah.ayahs
              ?.map((a) => a.audio)
              .where((url) => url.isNotEmpty)
              .toList() ??
          [];
      return Right(urls);
    } catch (e) {
      return Left(
        Failure.networkError(message: 'Failed to load audio: $e'),
      );
    }
  }

  Future<Either<Failure, List<Map<String, dynamic>>>> getReciters() async {
    try {
      final editions = await _client.getAudioEditions();
      final reciters = editions
          .map((e) => {
                'slug': e.identifier,
                'name': e.englishName,
                'language': e.language,
              })
          .toList();
      return Right(reciters);
    } catch (e) {
      return Left(
        Failure.networkError(message: 'Failed to load reciters: $e'),
      );
    }
  }

  Surah _mapSurah(ApiSurah api) {
    return Surah(
      id: api.number,
      number: api.number,
      nameArabic: api.name,
      nameEnglish: api.englishName,
      nameTranslated: api.englishNameTranslation,
      revelationType: api.revelationType.toLowerCase(),
      ayahCount: api.numberOfAyahs,
      sortOrder: api.number,
    );
  }

  Ayah _mapAyah(ApiAyah api) {
    return Ayah(
      id: api.numberInSurah,
      surahId: 0,
      ayahNumber: api.numberInSurah,
      globalAyahNumber: api.number,
      arabicText: api.text,
      pageNumber: api.page,
      juzNumber: api.juz,
      hizbNumber: api.hizbQuarter,
    );
  }
}
