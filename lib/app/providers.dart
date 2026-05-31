import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/theme/theme_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeNotifierProvider = ChangeNotifierProvider<ThemeNotifier>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return ThemeNotifier(prefs);
});

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('SharedPreferences not initialized');
});
