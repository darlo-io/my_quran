import 'package:firebase_crashlytics/firebase_crashlytics.dart';

enum LogLevel { debug, info, warning, error, fatal }

class AppLogger {
  AppLogger._();

  static void log(
    String message, {
    LogLevel level = LogLevel.debug,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (level == LogLevel.error || level == LogLevel.fatal) {
      FirebaseCrashlytics.instance.recordError(
        error ?? message,
        stackTrace,
        reason: message,
      );
    }
  }

  static void debug(String message) => log(message, level: LogLevel.debug);
  static void info(String message) => log(message, level: LogLevel.info);
  static void warning(String message) => log(message, level: LogLevel.warning);
  static void error(String message, {Object? error, StackTrace? stackTrace}) =>
      log(message, level: LogLevel.error, error: error, stackTrace: stackTrace);
  static void fatal(String message, {Object? error, StackTrace? stackTrace}) =>
      log(message, level: LogLevel.fatal, error: error, stackTrace: stackTrace);
}
