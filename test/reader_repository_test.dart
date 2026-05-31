import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/reader/data/datasources/quran_remote_data_source.dart';
import 'package:quran_app/features/reader/data/repositories/reader_repository_impl.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';

class MockAppDatabase extends Mock implements AppDatabase {}
class MockQuranRemoteDataSource extends Mock
    implements QuranRemoteDataSource {}
class MockSurahDao extends Mock implements SurahDao {}
class MockAyahDao extends Mock implements AyahDao {}
class MockReadingProgressDao extends Mock implements ReadingProgressDao {}
class MockTranslationDao extends Mock implements TranslationDao {}

void main() {
  late ReaderRepositoryImpl repository;
  late MockAppDatabase mockDb;
  late MockQuranRemoteDataSource mockRemote;
  late MockSurahDao mockSurahDao;
  late MockAyahDao mockAyahDao;
  late MockReadingProgressDao mockReadingProgressDao;
  late MockTranslationDao mockTranslationDao;

  setUp(() {
    mockDb = MockAppDatabase();
    mockRemote = MockQuranRemoteDataSource();
    mockSurahDao = MockSurahDao();
    mockAyahDao = MockAyahDao();
    mockReadingProgressDao = MockReadingProgressDao();
    mockTranslationDao = MockTranslationDao();

    when(() => mockDb.surahDao).thenReturn(mockSurahDao);
    when(() => mockDb.ayahDao).thenReturn(mockAyahDao);
    when(() => mockDb.readingProgressDao).thenReturn(mockReadingProgressDao);
    when(() => mockDb.translationDao).thenReturn(mockTranslationDao);

    repository = ReaderRepositoryImpl(mockDb, mockRemote);
  });

  group('getSurahs', () {
    test('returns surahs from local DB when available', () async {
      final surahData = SurahData(
        id: 1,
        number: 1,
        nameArabic: 'الفاتحة',
        nameEnglish: 'Al-Fatihah',
        nameTranslated: 'Открывающая',
        revelationType: 'meccan',
        ayahCount: 7,
        sortOrder: 1,
      );

      when(() => mockSurahDao.getAll())
          .thenAnswer((_) async => [surahData]);

      final result = await repository.getSurahs();

      expect(result.isRight(), true);
      result.fold(
        (_) => fail('Should be Right'),
        (surahs) {
          expect(surahs.length, 1);
          expect(surahs.first.nameTranslated, 'Открывающая');
        },
      );
    });

    test('fetches from remote when local DB is empty', () async {
      final surah = Surah(
        id: 1,
        number: 1,
        nameArabic: 'الفاتحة',
        nameEnglish: 'Al-Fatihah',
        nameTranslated: 'Открывающая',
        revelationType: 'meccan',
        ayahCount: 7,
        sortOrder: 1,
      );

      when(() => mockSurahDao.getAll()).thenAnswer((_) async => []);
      when(() => mockRemote.getAllSurahs())
          .thenAnswer((_) async => Right([surah]));

      final result = await repository.getSurahs();

      expect(result.isRight(), true);
      result.fold(
        (_) => fail('Should be Right'),
        (surahs) => expect(surahs.length, 1),
      );
    });

    test('returns Left when remote fails and local is empty', () async {
      when(() => mockSurahDao.getAll()).thenAnswer((_) async => []);
      when(() => mockRemote.getAllSurahs()).thenAnswer(
        (_) async => const Left(Failure.networkError(message: 'No internet')),
      );

      final result = await repository.getSurahs();

      expect(result.isLeft(), true);
    });
  });

  group('getAyahs', () {
    test('returns ayahs from local DB', () async {
      final ayahData = AyahData(
        id: 1,
        surahId: 1,
        ayahNumber: 1,
        globalAyahNumber: 1,
        arabicText: 'بسم الله',
        pageNumber: 1,
        juzNumber: 1,
        hizbNumber: 1,
      );

      when(() => mockAyahDao.getBySurah(1))
          .thenAnswer((_) async => [ayahData]);

      final result = await repository.getAyahs(1);

      expect(result.isRight(), true);
      result.fold(
        (_) => fail('Should be Right'),
        (ayahs) {
          expect(ayahs.length, 1);
          expect(ayahs.first.arabicText, 'بسم الله');
        },
      );
    });
  });

  group('getAyah', () {
    test('returns ayah when found', () async {
      final ayahData = AyahData(
        id: 1,
        surahId: 1,
        ayahNumber: 1,
        globalAyahNumber: 1,
        arabicText: 'بسم الله',
        pageNumber: 1,
        juzNumber: 1,
        hizbNumber: 1,
      );

      when(() => mockAyahDao.getBySurahAndNumber(1, 1))
          .thenAnswer((_) async => ayahData);

      final result = await repository.getAyah(1, 1);

      expect(result.isRight(), true);
      result.fold(
        (_) => fail('Should be Right'),
        (ayah) => expect(ayah.arabicText, 'بسم الله'),
      );
    });

    test('returns not found when ayah missing', () async {
      when(() => mockAyahDao.getBySurahAndNumber(1, 999))
          .thenAnswer((_) async => null);

      final result = await repository.getAyah(1, 999);

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NotFoundFailure>()),
        (_) => fail('Should be Left'),
      );
    });
  });
}
