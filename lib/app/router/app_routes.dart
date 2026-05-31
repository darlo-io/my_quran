class AppRoutes {
  AppRoutes._();

  static const String home = '/';
  static const String reader = '/reader';
  static const String readerSurahs = '/reader/surahs';
  static const String readerSurah = '/reader/surah/:surahId';
  static const String readerBookmarks = '/reader/bookmarks';
  static const String readerSettings = '/reader/settings';
  static const String search = '/search';
  static const String hifz = '/hifz';
  static const String hifzPlans = '/hifz/plans';
  static const String hifzPlan = '/hifz/plans/:planId';
  static const String hifzReview = '/hifz/review';
  static const String goals = '/goals';
  static const String goalDetails = '/goals/:goalId';
  static const String audioReciters = '/audio/reciters';
  static const String storage = '/storage';
  static const String storageDownloads = '/storage/downloads';
  static const String contentPacks = '/content/packs';
  static const String profile = '/profile';
  static const String profileSettings = '/profile/settings';
  static const String profileAccount = '/profile/account';
  static const String profileStatistics = '/profile/statistics';
  static const String profileLanguage = '/profile/language';
  static const String profileTranslations = '/profile/translations';
  static const String profileAudio = '/profile/audio';
  static const String profileStorage = '/profile/storage';
  static const String authLogin = '/auth/login';
  static const String authRegister = '/auth/register';
  static const String authForgotPassword = '/auth/forgot-password';
  static const String onboarding = '/onboarding';
  static const String notFound = '/not-found';
}
