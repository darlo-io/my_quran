import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/features/audio/presentation/screens/reciters_screen.dart';
import 'package:quran_app/features/auth/presentation/screens/auth_login_screen.dart';
import 'package:quran_app/features/auth/presentation/screens/auth_register_screen.dart';
import 'package:quran_app/features/bookmarks/presentation/screens/bookmarks_screen.dart';
import 'package:quran_app/features/content/presentation/screens/content_pack_screen.dart';
import 'package:quran_app/features/downloads/presentation/screens/storage_screen.dart';
import 'package:quran_app/features/goals/presentation/screens/goals_screen.dart';
import 'package:quran_app/features/audio/presentation/widgets/mini_player_bar.dart';
import 'package:quran_app/features/hifz/presentation/screens/hifz_screen.dart';
import 'package:quran_app/shared/widgets/adaptive_layout.dart';
import 'package:quran_app/shared/widgets/offline_banner.dart';
import 'package:quran_app/features/hifz/presentation/screens/hifz_plan_screen.dart';
import 'package:quran_app/features/hifz/presentation/screens/hifz_review_screen.dart';
import 'package:quran_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:quran_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:quran_app/features/profile/presentation/screens/statistics_screen.dart';
import 'package:quran_app/features/settings/presentation/screens/settings_screen.dart';
import 'package:quran_app/features/reader/presentation/screens/home_screen.dart';
import 'package:quran_app/features/reader/presentation/screens/reader_screen.dart';
import 'package:quran_app/features/reader/presentation/screens/reader_settings_screen.dart';
import 'package:quran_app/features/reader/presentation/screens/surah_list_screen.dart';
import 'package:quran_app/features/search/presentation/screens/search_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter() {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoutes.home,
    debugLogDiagnostics: true,
    routes: _buildRoutes(),
  );
}

List<RouteBase> _buildRoutes() {
  return [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppShell(child: navigationShell),
      branches: [
        // Home tab
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        // Read tab
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.readerSurahs,
              builder: (context, state) => const SurahListScreen(),
              routes: [
                GoRoute(
                  path: ':surahId',
                  builder: (context, state) {
                    final surahId = int.parse(state.pathParameters['surahId']!);
                    final ayahId = state.uri.queryParameters['ayahId'];
                    return ReaderScreen(
                      surahId: surahId,
                      ayahId: ayahId != null ? int.parse(ayahId) : null,
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: AppRoutes.readerBookmarks,
              builder: (context, state) => const BookmarksScreen(),
            ),
            GoRoute(
              path: AppRoutes.readerSettings,
              builder: (context, state) => const ReaderSettingsScreen(),
            ),
          ],
        ),
        // Search tab
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.search,
              builder: (context, state) => const SearchScreen(),
            ),
          ],
        ),
        // Hifz tab
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.hifz,
              builder: (context, state) => const HifzScreen(),
            ),
            GoRoute(
              path: AppRoutes.hifzPlans,
              builder: (context, state) => const HifzPlanScreen(),
            ),
            GoRoute(
              path: AppRoutes.hifzPlan,
              builder: (context, state) => const HifzPlanScreen(),
            ),
            GoRoute(
              path: AppRoutes.hifzReview,
              builder: (context, state) => const HifzReviewScreen(),
            ),
          ],
        ),
        // Profile tab
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileSettings,
              builder: (context, state) => const SettingsScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileAccount,
              builder: (context, state) => const ProfileScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileStatistics,
              builder: (context, state) => const StatisticsScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileLanguage,
              builder: (context, state) => const ProfileScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileTranslations,
              builder: (context, state) => const ProfileScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileAudio,
              builder: (context, state) => const ProfileScreen(),
            ),
            GoRoute(
              path: AppRoutes.profileStorage,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    // Standalone routes (outside bottom nav)
    GoRoute(
      path: AppRoutes.goals,
      builder: (context, state) => const GoalsScreen(),
    ),
    GoRoute(
      path: AppRoutes.goalDetails,
      builder: (context, state) => const GoalsScreen(),
    ),
    GoRoute(
      path: AppRoutes.audioReciters,
      builder: (context, state) => const AudioRecitersScreen(),
    ),
    GoRoute(
      path: AppRoutes.contentPacks,
      builder: (context, state) => const ContentPackScreen(),
    ),
    GoRoute(
      path: AppRoutes.storage,
      builder: (context, state) => const StorageScreen(),
    ),
    GoRoute(
      path: AppRoutes.storageDownloads,
      builder: (context, state) => const StorageScreen(),
    ),
    GoRoute(
      path: AppRoutes.authLogin,
      builder: (context, state) => const AuthLoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.authRegister,
      builder: (context, state) => const AuthRegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.authForgotPassword,
      builder: (context, state) => const AuthLoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
  ];
}

// Bottom navigation shell
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsivePadding(
        child: Column(
          children: [
            const OfflineBanner(),
            const MiniPlayerBar(),
            Expanded(child: child),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (index) => _onItemTapped(index, context),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Чтение',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Поиск',
          ),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            selectedIcon: Icon(Icons.school),
            label: 'Hifz',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            selectedIcon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/reader')) return 1;
    if (location.startsWith('/search')) return 2;
    if (location.startsWith('/hifz')) return 3;
    if (location.startsWith('/profile') ||
        location.startsWith('/auth') ||
        location.startsWith('/goals') ||
        location.startsWith('/storage') ||
        location.startsWith('/audio')) {
      return 4;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(AppRoutes.home);
      case 1:
        context.go(AppRoutes.readerSurahs);
      case 2:
        context.go(AppRoutes.search);
      case 3:
        context.go(AppRoutes.hifz);
      case 4:
        context.go(AppRoutes.profile);
    }
  }
}
