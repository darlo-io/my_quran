import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/hifz/domain/entities/hifz_plan.dart';
import 'package:quran_app/shared/design_system/typography.dart';

class HifzReviewScreen extends ConsumerStatefulWidget {
  const HifzReviewScreen({super.key});

  @override
  ConsumerState<HifzReviewScreen> createState() => _HifzReviewScreenState();
}

class _HifzReviewScreenState extends ConsumerState<HifzReviewScreen> {
  int _currentIndex = 0;
  bool _showAnswer = false;

  // Demo review items
  final _items = const [
    _ReviewItem(
      ayahArabic: 'ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ',
      ayahTranslation: 'Хвала Аллаху, Господу миров',
      surahName: 'Аль-Фатиха',
      ayahNumber: 2,
    ),
    _ReviewItem(
      ayahArabic: 'ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
      ayahTranslation: 'Милостивому, Милосердному',
      surahName: 'Аль-Фатиха',
      ayahNumber: 3,
    ),
    _ReviewItem(
      ayahArabic: 'مَـٰلِكِ يَوْمِ ٱلدِّينِ',
      ayahTranslation: 'Властелину Дня воздаяния',
      surahName: 'Аль-Фатиха',
      ayahNumber: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Повторение')),
        body: const Center(child: Text('Нет аятов на повторение')),
      );
    }

    if (_currentIndex >= _items.length) {
      return _buildCompletionScreen();
    }

    final item = _items[_currentIndex];
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Повторение ${_currentIndex + 1}/${_items.length}'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.go(AppRoutes.hifz),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Progress bar
            LinearProgressIndicator(
              value: _currentIndex / _items.length,
              minHeight: 4,
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Surah + Ayah info
                      Text(
                        '${item.surahName} ${item.ayahNumber}',
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      // Arabic text
                      Text(
                        item.ayahArabic,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: AppTypography.arabicDisplay(
                          context,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xl),
                      // Show/Hide button
                      OutlinedButton.icon(
                        onPressed: () =>
                            setState(() => _showAnswer = !_showAnswer),
                        icon: Icon(
                          _showAnswer
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        label: Text(
                          _showAnswer
                              ? 'Скрыть перевод'
                              : 'Показать перевод',
                        ),
                      ),
                      if (_showAnswer) ...[
                        const SizedBox(height: AppSpacing.xl),
                        Text(
                          item.ayahTranslation,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
            // Rating buttons
            if (_showAnswer)
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Row(
                  children: ReviewGrade.values.map((grade) {
                    return Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
                        child: _GradeButton(
                          grade: grade,
                          onPressed: () {
                            setState(() {
                              _currentIndex++;
                              _showAnswer = false;
                            });
                          },
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            const SizedBox(height: AppSpacing.lg),
          ],
        ),
      ),
    );
  }

  Widget _buildCompletionScreen() {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Повторение')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle,
                  size: 80, color: theme.colorScheme.primary),
              const SizedBox(height: AppSpacing.xl),
              Text(
                'Повторение завершено!',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Вы повторили ${_items.length} аятов',
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: AppSpacing.xl),
              FilledButton(
                onPressed: () => context.go(AppRoutes.hifz),
                child: const Text('Вернуться'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewItem {
  final String ayahArabic;
  final String ayahTranslation;
  final String surahName;
  final int ayahNumber;

  const _ReviewItem({
    required this.ayahArabic,
    required this.ayahTranslation,
    required this.surahName,
    required this.ayahNumber,
  });
}

class _GradeButton extends StatelessWidget {
  const _GradeButton({required this.grade, required this.onPressed});

  final ReviewGrade grade;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final (String label, Color color, IconData icon) = switch (grade) {
      ReviewGrade.again => ('Снова', Colors.red, Icons.replay),
      ReviewGrade.hard => ('Сложно', Colors.orange, Icons.sentiment_neutral),
      ReviewGrade.good => ('Хорошо', Colors.green, Icons.sentiment_satisfied),
      ReviewGrade.easy => ('Легко', Colors.blue, Icons.sentiment_very_satisfied),
    };

    return SizedBox(
      height: 72,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color.withValues(alpha: 0.1),
          foregroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            const SizedBox(height: 2),
            Text(label, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
