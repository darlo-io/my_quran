import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppThemeMode { light, dark, system }

class ThemeNotifier extends ChangeNotifier {
  final SharedPreferences _prefs;
  AppThemeMode _mode;

  ThemeNotifier(this._prefs)
      : _mode = AppThemeMode.values.firstWhere(
          (e) => e.name == _prefs.getString('theme_mode'),
          orElse: () => AppThemeMode.system,
        );

  AppThemeMode get mode => _mode;

  ThemeMode get flutterThemeMode => switch (_mode) {
        AppThemeMode.light => ThemeMode.light,
        AppThemeMode.dark => ThemeMode.dark,
        AppThemeMode.system => ThemeMode.system,
      };

  Future<void> setThemeMode(AppThemeMode mode) async {
    _mode = mode;
    await _prefs.setString('theme_mode', mode.name);
    notifyListeners();
  }
}
