import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/providers.dart';
import 'package:quran_app/app/router/router_config.dart';
import 'package:quran_app/app/theme/app_theme.dart';

final routerProvider = Provider<GoRouter>((ref) => createRouter());

class QuranApp extends ConsumerWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeNotifierProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Quran App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeNotifier.flutterThemeMode,
      routerConfig: router,
    );
  }
}
