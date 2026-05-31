import 'package:drift/drift.dart';

@DataClassName('SurahData')
class Surahs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get number => integer()();
  TextColumn get nameArabic => text()();
  TextColumn get nameEnglish => text()();
  TextColumn get nameTranslated => text()();
  TextColumn get revelationType => text()();
  IntColumn get ayahCount => integer()();
  IntColumn get sortOrder => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AyahData')
class Ayahs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get surahId => integer().references(Surahs, #id)();
  IntColumn get ayahNumber => integer()();
  IntColumn get globalAyahNumber => integer()();
  TextColumn get arabicText => text()();
  IntColumn get pageNumber => integer()();
  IntColumn get juzNumber => integer()();
  IntColumn get hizbNumber => integer()();
}

@DataClassName('TranslationData')
class Translations extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get translationKey => text()();
  TextColumn get languageCode => text()();
  TextColumn get translatorName => text()();
  TextColumn get version => text()();
  BoolColumn get enabled => boolean().withDefault(const Constant(true))();
}

@DataClassName('TranslationAyahData')
class TranslationAyahs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get translationId => integer().references(Translations, #id)();
  IntColumn get ayahId => integer().references(Ayahs, #id)();
  TextColumn get translationText => text()();
}

@DataClassName('TafsirData')
class Tafsirs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tafsirKey => text()();
  TextColumn get languageCode => text()();
  TextColumn get author => text()();
  TextColumn get version => text()();
}

@DataClassName('TafsirAyahData')
class TafsirAyahs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get tafsirId => integer().references(Tafsirs, #id)();
  IntColumn get ayahId => integer().references(Ayahs, #id)();
  TextColumn get tafsirText => text()();
}

@DataClassName('ReciterData')
class Reciters extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get slug => text()();
  TextColumn get name => text()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get description => text().nullable()();
}

@DataClassName('AudioPackData')
class AudioPacks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get reciterId => integer().references(Reciters, #id)();
  TextColumn get quality => text()();
  IntColumn get sizeBytes => integer()();
  TextColumn get version => text()();
}

@DataClassName('AudioFileData')
class AudioFiles extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get audioPackId => integer().references(AudioPacks, #id)();
  IntColumn get surahId => integer().references(Surahs, #id)();
  TextColumn get remoteUrl => text()();
  TextColumn get localPath => text().nullable()();
  IntColumn get durationSeconds => integer()();
  TextColumn get checksum => text()();
}

@DataClassName('ContentPackData')
class ContentPacks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get languageCode => text()();
  TextColumn get version => text()();
  IntColumn get sizeBytes => integer()();
  TextColumn get checksum => text()();
  DateTimeColumn get publishedAt => dateTime()();
}

@DataClassName('InstalledPackageData')
class InstalledPackages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get packageId => integer().references(ContentPacks, #id)();
  TextColumn get installedVersion => text()();
  DateTimeColumn get installedAt => dateTime()();
  TextColumn get status => text()();
}

@DataClassName('ReadingProgressData')
class ReadingProgressTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get surahId => integer().references(Surahs, #id)();
  IntColumn get ayahId => integer().references(Ayahs, #id)();
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastOpenedAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

@DataClassName('ReadingSessionData')
class ReadingSessions extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get startedAt => dateTime()();
  DateTimeColumn get endedAt => dateTime().nullable()();
  IntColumn get surahId => integer().references(Surahs, #id)();
  IntColumn get ayahsRead => integer()();
  IntColumn get durationSeconds => integer()();
}

@DataClassName('LastReadPositionData')
class LastReadPosition extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get surahId => integer().references(Surahs, #id)();
  IntColumn get ayahId => integer().references(Ayahs, #id)();
  DateTimeColumn get updatedAt => dateTime()();
}

@DataClassName('BookmarkData')
class Bookmarks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get ayahId => integer().references(Ayahs, #id)();
  TextColumn get note => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

@DataClassName('FavoriteReciterData')
class FavoriteReciters extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get reciterId => integer().references(Reciters, #id)();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('ReadingGoalData')
class ReadingGoals extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get goalType => text()();
  IntColumn get targetValue => integer()();
  BoolColumn get active => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('GoalProgressData')
class GoalProgress extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get goalId => integer().references(ReadingGoals, #id)();
  TextColumn get date => text()();
  IntColumn get currentValue => integer()();
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
}

@DataClassName('HifzPlanData')
class HifzPlans extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get level => text()();
  BoolColumn get active => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('HifzItemData')
class HifzItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get planId => integer().references(HifzPlans, #id)();
  IntColumn get ayahId => integer().references(Ayahs, #id)();
  IntColumn get orderNumber => integer()();
  TextColumn get status => text()();
}

@DataClassName('ReviewSessionData')
class ReviewSessions extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get startedAt => dateTime()();
  DateTimeColumn get endedAt => dateTime().nullable()();
  IntColumn get itemsCount => integer()();
}

@DataClassName('ReviewResultData')
class ReviewResults extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get sessionId => integer().references(ReviewSessions, #id)();
  IntColumn get hifzItemId => integer().references(HifzItems, #id)();
  TextColumn get grade => text()();
  DateTimeColumn get reviewedAt => dateTime()();
  DateTimeColumn get nextReviewAt => dateTime().nullable()();
}

@DataClassName('DownloadTaskData')
class DownloadTasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get packageId => integer().references(ContentPacks, #id)();
  TextColumn get status => text()();
  IntColumn get progress => integer().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('SettingsData')
class Settings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get languageCode => text().withDefault(const Constant('ru'))();
  TextColumn get themeMode => text().withDefault(const Constant('system'))();
  TextColumn get translationKey => text().nullable()();
  BoolColumn get showTranslation => boolean().withDefault(const Constant(true))();
  BoolColumn get showTransliteration =>
      boolean().withDefault(const Constant(false))();
  TextColumn get selectedReciter => text().nullable()();
  TextColumn get audioQuality => text().withDefault(const Constant('128'))();
  BoolColumn get notificationsEnabled =>
      boolean().withDefault(const Constant(true))();
}

@DataClassName('UserProfileData')
class UserProfile extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text()();
  TextColumn get displayName => text().nullable()();
  TextColumn get avatarUrl => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('SyncQueueData')
class SyncQueue extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get entityType => text()();
  TextColumn get entityId => text()();
  TextColumn get operation => text()();
  TextColumn get payload => text()();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get status => text()();
}
