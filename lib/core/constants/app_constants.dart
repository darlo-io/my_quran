class AppConstants {
  AppConstants._();

  static const String appName = 'Quran App';
  static const Duration splashDuration = Duration(seconds: 2);
  static const Duration searchDebounce = Duration(milliseconds: 300);
  static const int minSearchQueryLength = 2;
  static const int maxSearchHistory = 20;
  static const int maxParallelDownloads = 2;
  static const int defaultDailyNewAyahs = 5;
  static const int maxDownloadRetries = 5;
  static const String apiBaseUrl = 'https://api.quranapp.com/api/v1';
  static const int defaultRateLimit = 100;
}
