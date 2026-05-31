import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';

final readingStatsProvider = FutureProvider<Map<String, int>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  final all = await db.select(db.readingSessions).get();

  var totalAyahs = 0;
  var totalSeconds = 0;
  var totalSessions = all.length;

  for (final s in all) {
    totalAyahs += s.ayahsRead;
    totalSeconds += s.durationSeconds;
  }

  // Calculate streak
  var streak = 0;
  final today = DateTime.now();
  for (var d = today; ; d = d.subtract(const Duration(days: 1))) {
    final dateStr = d.toIso8601String().substring(0, 10);
    final hasSession = all.any((s) =>
        s.startedAt.toIso8601String().substring(0, 10) == dateStr);
    if (hasSession) {
      streak++;
    } else if (d != today) {
      break;
    }
  }

  return {
    'totalAyahs': totalAyahs,
    'totalMinutes': totalSeconds ~/ 60,
    'totalSessions': totalSessions,
    'streak': streak,
  };
});

class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(readingStatsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Статистика')),
      body: statsAsync.when(
        data: (stats) => ListView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          children: [
            // Streak card
            Card(
              color: theme.colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.xl),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_fire_department,
                        size: 40, color: theme.colorScheme.onPrimaryContainer),
                    const SizedBox(width: AppSpacing.md),
                    Column(
                      children: [
                        Text(
                          '${stats['streak']}',
                          style: theme.textTheme.headlineLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                        Text(
                          'дней подряд',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
            // Stats grid
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    icon: Icons.menu_book,
                    label: 'Аятов прочитано',
                    value: '${stats['totalAyahs']}',
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: _StatCard(
                    icon: Icons.timer,
                    label: 'Минут чтения',
                    value: '${stats['totalMinutes']}',
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    icon: Icons.auto_stories,
                    label: 'Сессий чтения',
                    value: '${stats['totalSessions']}',
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: _StatCard(
                    icon: Icons.school,
                    label: 'Аятов выучено',
                    value: '0',
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            // Weekly reading chart placeholder
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Чтение за неделю', style: theme.textTheme.titleMedium),
                    const SizedBox(height: AppSpacing.lg),
                    SizedBox(
                      height: 150,
                      child: _WeeklyChart(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Ошибка: $e')),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            Icon(icon, color: theme.colorScheme.primary, size: 28),
            const SizedBox(height: AppSpacing.sm),
            Text(
              value,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: theme.textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final days = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
    final values = [0.3, 0.6, 0.2, 0.8, 0.5, 0.0, 0.4];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(days.length, (i) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 120 * values[i],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: values[i] > 0.5
                        ? theme.colorScheme.primary
                        : theme.colorScheme.primaryContainer,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  days[i],
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
