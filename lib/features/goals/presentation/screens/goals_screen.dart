import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' show Value;
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/features/goals/domain/entities/reading_goal.dart';

final goalsProvider = FutureProvider<List<ReadingGoalData>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  return db.goalDao.getActive();
});

final todayProgressProvider =
    FutureProvider.family<GoalProgressData?, int>((ref, goalId) async {
  final db = ref.watch(appDatabaseProvider);
  final today = DateTime.now().toIso8601String().substring(0, 10);
  final all = await db.select(db.goalProgress)
      .get();
  return all.where((p) => p.goalId == goalId && p.date == today).firstOrNull;
});

class GoalsScreen extends ConsumerStatefulWidget {
  const GoalsScreen({super.key});

  @override
  ConsumerState<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends ConsumerState<GoalsScreen> {
  String _selectedType = 'dailyAyahs';
  final _targetController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _targetController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final goalsAsync = ref.watch(goalsProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Цели'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showCreateDialog(context),
            tooltip: 'Новая цель',
          ),
        ],
      ),
      body: goalsAsync.when(
        data: (goals) {
          if (goals.isEmpty) {
            return _EmptyGoals(onAdd: () => _showCreateDialog(context));
          }
          return ListView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            children: goals.map((g) => _GoalCard(goal: g)).toList(),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
              const SizedBox(height: 16),
              Text('Ошибка: $e'),
              ElevatedButton(
                onPressed: () => ref.invalidate(goalsProvider),
                child: const Text('Повторить'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateDialog(BuildContext context) {
    final theme = Theme.of(context);
    _targetController.clear();
    _nameController.clear();

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Новая цель'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<String>(
                value: _selectedType,
                decoration: const InputDecoration(labelText: 'Тип цели'),
                items: const [
                  DropdownMenuItem(value: 'dailyAyahs', child: Text('Аятов в день')),
                  DropdownMenuItem(value: 'dailyPages', child: Text('Страниц в день')),
                  DropdownMenuItem(value: 'dailyMinutes', child: Text('Минут в день')),
                ],
                onChanged: (v) => setDialogState(() => _selectedType = v!),
              ),
              const SizedBox(height: AppSpacing.lg),
              TextField(
                controller: _targetController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: _goalLabel(_selectedType),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Отмена'),
            ),
            FilledButton(
              onPressed: () {
                final value = int.tryParse(_targetController.text);
                if (value == null || value <= 0) return;
                _createGoal(value);
                Navigator.pop(ctx);
              },
              child: const Text('Создать'),
            ),
          ],
        ),
      ),
    );
  }

  String _goalLabel(String type) {
    return switch (type) {
      'dailyAyahs' => 'Количество аятов',
      'dailyPages' => 'Количество страниц',
      'dailyMinutes' => 'Количество минут',
      _ => 'Значение',
    };
  }

  void _createGoal(int targetValue) {
    final db = ref.read(appDatabaseProvider);
    db.goalDao.insertGoal(
      ReadingGoalsCompanion(
        goalType: Value(_selectedType),
        targetValue: Value(targetValue),
        createdAt: Value(DateTime.now()),
      ),
    ).then((_) => ref.invalidate(goalsProvider));
  }
}

class _EmptyGoals extends StatelessWidget {
  const _EmptyGoals({required this.onAdd});
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.flag_outlined, size: 64, color: theme.colorScheme.outline),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'У вас пока нет целей',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Установите дневную цель по чтению Корана',
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xl),
            FilledButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
              label: const Text('Создать цель'),
            ),
          ],
        ),
      ),
    );
  }
}

class _GoalCard extends ConsumerWidget {
  const _GoalCard({required this.goal});
  final ReadingGoalData goal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final progressAsync = ref.watch(todayProgressProvider(goal.id));
    final currentValue = progressAsync.valueOrNull?.currentValue ?? 0;
    final progress = goal.targetValue > 0
        ? (currentValue / goal.targetValue).clamp(0.0, 1.0)
        : 0.0;

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _goalTypeName(goal.goalType),
                  style: theme.textTheme.titleMedium,
                ),
                PopupMenuButton<String>(
                  itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: 'delete',
                      child: Text('Удалить', style: TextStyle(color: Colors.red)),
                    ),
                  ],
                  onSelected: (v) {
                    if (v == 'delete') {
                      ref.read(appDatabaseProvider).goalDao.deleteGoal(goal.id);
                      ref.invalidate(goalsProvider);
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            LinearProgressIndicator(
              value: progress,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
              backgroundColor: theme.colorScheme.surfaceContainerHighest,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              '$currentValue / ${goal.targetValue} ${_goalUnit(goal.goalType)}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => _increment(ref, -1),
                  child: const Text('-1'),
                ),
                const SizedBox(width: AppSpacing.sm),
                FilledButton.tonal(
                  onPressed: () => _increment(ref, 1),
                  child: const Text('+1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _increment(WidgetRef ref, int delta) {
    final db = ref.read(appDatabaseProvider);
    final today = DateTime.now().toIso8601String().substring(0, 10);
    final newValue = ((ref.read(todayProgressProvider(goal.id)).valueOrNull?.currentValue ?? 0) + delta).clamp(0, goal.targetValue);
    db.goalDao.upsertProgress(
      GoalProgressCompanion(
        goalId: Value(goal.id),
        date: Value(today),
        currentValue: Value(newValue),
        completed: Value(newValue >= goal.targetValue),
      ),
    ).then((_) => ref.invalidate(todayProgressProvider(goal.id)));
  }

  String _goalTypeName(String type) {
    return switch (type) {
      'dailyAyahs' => 'Аятов в день',
      'dailyPages' => 'Страниц в день',
      'dailyMinutes' => 'Минут в день',
      _ => type,
    };
  }

  String _goalUnit(String type) {
    return switch (type) {
      'dailyAyahs' => 'аятов',
      'dailyPages' => 'страниц',
      'dailyMinutes' => 'минут',
      _ => '',
    };
  }
}
