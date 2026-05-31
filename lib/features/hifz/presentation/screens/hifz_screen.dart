import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';

class HifzScreen extends ConsumerWidget {
  const HifzScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hifz'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.push(AppRoutes.hifzPlans),
            tooltip: 'Новый план',
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Stats cards
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  title: 'На повторение',
                  value: '12',
                  color: theme.colorScheme.primary,
                  icon: Icons.replay,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: _StatCard(
                  title: 'Выучено',
                  value: '45',
                  color: theme.colorScheme.tertiary,
                  icon: Icons.check_circle,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  title: 'Дней подряд',
                  value: '7',
                  color: theme.colorScheme.secondary,
                  icon: Icons.local_fire_department,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: _StatCard(
                  title: 'Удержание',
                  value: '85%',
                  color: theme.colorScheme.error.withValues(alpha: 0.7),
                  icon: Icons.trending_up,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),

          // Start Review Button
          FilledButton.icon(
            onPressed: () => context.push(AppRoutes.hifzReview),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Начать повторение'),
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(56),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Plans section
          Text('Мои планы', style: theme.textTheme.titleMedium),
          const SizedBox(height: AppSpacing.md),
          _EmptyPlansCard(onCreatePlan: () {
            context.push(AppRoutes.hifzPlans);
          }),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
  });

  final String title;
  final String value;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: AppSpacing.sm),
            Text(
              value,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              title,
              style: theme.textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyPlansCard extends StatelessWidget {
  const _EmptyPlansCard({required this.onCreatePlan});

  final VoidCallback onCreatePlan;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          children: [
            Icon(Icons.school_outlined,
                size: 48, color: theme.colorScheme.outline),
            const SizedBox(height: AppSpacing.md),
            Text(
              'У вас пока нет планов заучивания',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.lg),
            OutlinedButton.icon(
              onPressed: onCreatePlan,
              icon: const Icon(Icons.add),
              label: const Text('Создать план'),
            ),
          ],
        ),
      ),
    );
  }
}
