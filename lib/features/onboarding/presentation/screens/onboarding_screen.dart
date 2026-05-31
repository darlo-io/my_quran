import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:shared_preferences/shared_preferences.dart';

final onboardingCompletedProvider = StateProvider<bool>((ref) => false);

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;

  final _pages = const [
    _OnboardingPage(
      icon: Icons.menu_book,
      title: 'Читайте Коран',
      description: 'Удобное построчное чтение с переводами и транслитерацией. '
          'Выбирайте комфортный размер шрифта и режим чтения.',
      color: Color(0xFF2E7D32),
    ),
    _OnboardingPage(
      icon: Icons.headphones,
      title: 'Слушайте чтецов',
      description: 'Более 50 чтецов со всего мира. Стриминг и офлайн-режим. '
          'Управление воспроизведением из фона.',
      color: Color(0xFF1565C0),
    ),
    _OnboardingPage(
      icon: Icons.school,
      title: 'Заучивайте аяты',
      description: 'Эффективная система интервального повторения (SM-2). '
          'Отслеживайте прогресс и поддерживайте серию дней.',
      color: Color(0xFF6A1B9A),
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => _finishOnboarding(),
                child: Text(
                  _currentPage < _pages.length - 1 ? 'Пропустить' : '',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
            // Pages
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (i) => setState(() => _currentPage = i),
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return Padding(
                    padding: const EdgeInsets.all(AppSpacing.xl),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: page.color.withValues(alpha: 0.1),
                          ),
                          child: Icon(page.icon, size: 56, color: page.color),
                        ),
                        const SizedBox(height: AppSpacing.xxxl),
                        Text(
                          page.title,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        Text(
                          page.description,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Indicators + Next/Start
            Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Dots
                  Row(
                    children: List.generate(_pages.length, (i) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(right: AppSpacing.xs),
                        width: _currentPage == i ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: _currentPage == i
                              ? theme.colorScheme.primary
                              : theme.colorScheme.outlineVariant,
                        ),
                      );
                    }),
                  ),
                  // Button
                  FilledButton(
                    onPressed: () {
                      if (_currentPage < _pages.length - 1) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        _finishOnboarding();
                      }
                    },
                    child: Text(
                      _currentPage < _pages.length - 1 ? 'Далее' : 'Начать',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _finishOnboarding() {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('onboarding_completed', true);
    });
    context.go(AppRoutes.home);
  }
}

class _OnboardingPage {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const _OnboardingPage({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });
}
