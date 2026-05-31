import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/reader/presentation/providers/reader_providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastReadAsync = ref.watch(lastReadPositionProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran App'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Continue Reading Card
          lastReadAsync.when(
            data: (surah) {
              if (surah == null) return const SizedBox.shrink();
              return _ContinueReadingCard(
                surahName: surah.nameTranslated,
                surahArabic: surah.nameArabic,
                onTap: () => context.push(
                  '${AppRoutes.readerSurah.replaceAll(':surahId', '')}${surah.id}',
                ),
              );
            },
            loading: () => const Card(
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.xl),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
            error: (_, __) => const SizedBox.shrink(),
          ),
          const SizedBox(height: AppSpacing.lg),

          // Quick Actions
          _QuickActionsGrid(
            actions: [
              _QuickAction(
                icon: Icons.menu_book,
                label: 'Читать',
                color: theme.colorScheme.primary,
                onTap: () => context.push(AppRoutes.readerSurahs),
              ),
              _QuickAction(
                icon: Icons.search,
                label: 'Поиск',
                color: theme.colorScheme.secondary,
                onTap: () => context.go(AppRoutes.search),
              ),
              _QuickAction(
                icon: Icons.school,
                label: 'Hifz',
                color: theme.colorScheme.tertiary,
                onTap: () => context.go(AppRoutes.hifz),
              ),
              _QuickAction(
                icon: Icons.headphones,
                label: 'Аудио',
                color: theme.colorScheme.error.withValues(alpha: 0.7),
                onTap: () => context.push(AppRoutes.audioReciters),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),

          // Daily Goal Card
          _DailyGoalCard(
            progress: 0.6,
            targetLabel: 'Аятов сегодня',
            current: 30,
            target: 50,
          ),
          const SizedBox(height: AppSpacing.lg),

          // Hifz Summary Card
          _HifzSummaryCard(
            toReview: 12,
            mastered: 45,
            streak: 7,
          ),
        ],
      ),
    );
  }
}

class _ContinueReadingCard extends StatelessWidget {
  const _ContinueReadingCard({
    required this.surahName,
    required this.surahArabic,
    required this.onTap,
  });

  final String surahName;
  final String surahArabic;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.primaryContainer,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(width: AppSpacing.lg),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Продолжить чтение',
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      surahName,
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      surahArabic,
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontFamily: 'Uthmanic',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuickActionsGrid extends StatelessWidget {
  const _QuickActionsGrid({required this.actions});

  final List<_QuickAction> actions;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.sm,
      crossAxisSpacing: AppSpacing.sm,
      children: actions.map((action) => action).toList(),
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color.withValues(alpha: 0.1),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            label,
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}

class _DailyGoalCard extends StatelessWidget {
  const _DailyGoalCard({
    required this.progress,
    required this.targetLabel,
    required this.current,
    required this.target,
  });

  final double progress;
  final String targetLabel;
  final int current;
  final int target;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Дневная цель',
                  style: theme.textTheme.titleMedium,
                ),
                Icon(Icons.flag_outlined,
                    color: theme.colorScheme.primary, size: 20),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              '$current / $target $targetLabel',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HifzSummaryCard extends StatelessWidget {
  const _HifzSummaryCard({
    required this.toReview,
    required this.mastered,
    required this.streak,
  });

  final int toReview;
  final int mastered;
  final int streak;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hifz', style: theme.textTheme.titleMedium),
            const SizedBox(height: AppSpacing.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _HifzStat(label: 'На повторение', value: '$toReview'),
                _HifzStat(label: 'Выучено', value: '$mastered'),
                _HifzStat(label: 'Дней подряд', value: '$streak'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HifzStat extends StatelessWidget {
  const _HifzStat({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
