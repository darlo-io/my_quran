import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';

class HifzPlanScreen extends ConsumerStatefulWidget {
  const HifzPlanScreen({super.key});

  @override
  ConsumerState<HifzPlanScreen> createState() => _HifzPlanScreenState();
}

class _HifzPlanScreenState extends ConsumerState<HifzPlanScreen> {
  final _nameController = TextEditingController();
  String _selectedLevel = 'beginner';
  final _selectedSurahs = <int>{};

  final _levels = const [
    'beginner',
    'intermediate',
    'advanced',
  ];

  final _levelLabels = const {
    'beginner': 'Начинающий (1-2 аята/день)',
    'intermediate': 'Средний (3-5 аятов/день)',
    'advanced': 'Продвинутый (5+ аятов/день)',
  };

  final _surahs = const [
    {'id': 1, 'name': 'Аль-Фатиха', 'ayahs': 7},
    {'id': 112, 'name': 'Аль-Ихлас', 'ayahs': 4},
    {'id': 113, 'name': 'Аль-Фалак', 'ayahs': 5},
    {'id': 114, 'name': 'Ан-Нас', 'ayahs': 6},
  ];

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Новый план'),
        actions: [
          TextButton(
            onPressed: _selectedSurahs.isNotEmpty ? _createPlan : null,
            child: const Text('Создать'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Plan name
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Название плана',
              hintText: 'Например: Джуз 30',
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Level selection
          Text('Уровень', style: theme.textTheme.titleMedium),
          const SizedBox(height: AppSpacing.sm),
          ..._levels.map((level) => RadioListTile<String>(
                title: Text(_levelLabels[level]!),
                value: level,
                groupValue: _selectedLevel,
                onChanged: (val) => setState(() => _selectedLevel = val!),
              )),
          const SizedBox(height: AppSpacing.xl),

          // Surah selection
          Text('Выберите суры', style: theme.textTheme.titleMedium),
          const SizedBox(height: AppSpacing.sm),
          ..._surahs.map(
            (s) => CheckboxListTile(
              title: Text(s['name'] as String),
              subtitle: Text('${s['ayahs']} аятов'),
              value: _selectedSurahs.contains(s['id']),
              onChanged: (val) {
                setState(() {
                  if (val == true) {
                    _selectedSurahs.add(s['id'] as int);
                  } else {
                    _selectedSurahs.remove(s['id'] as int);
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void _createPlan() {
    // TODO: Create Hifz plan via repository
    context.go(AppRoutes.hifz);
  }
}
