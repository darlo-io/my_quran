import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/features/reader/presentation/providers/reader_providers.dart';

class ReaderSettingsScreen extends ConsumerWidget {
  const ReaderSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showTranslation = ref.watch(showTranslationProvider);
    final showTransliteration = ref.watch(showTransliterationProvider);
    final readerMode = ref.watch(readerModeProvider);
    final fontSize = ref.watch(fontSizeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Настройки чтения')),
      body: ListView(
        children: [
          _SectionHeader(title: 'Перевод'),
          SwitchListTile(
            title: const Text('Показывать перевод'),
            value: showTranslation,
            onChanged: (val) =>
                ref.read(showTranslationProvider.notifier).state = val,
          ),
          SwitchListTile(
            title: const Text('Показывать транслитерацию'),
            value: showTransliteration,
            onChanged: (val) =>
                ref.read(showTransliterationProvider.notifier).state = val,
          ),
          ListTile(
            title: const Text('Выбрать перевод'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push(AppRoutes.profileTranslations),
          ),
          const Divider(),
          _SectionHeader(title: 'Размер шрифта'),
          _FontSizeSlider(fontSize: fontSize),
          const Divider(),
          _SectionHeader(title: 'Режим чтения'),
          RadioListTile<String>(
            title: const Text('Построчно'),
            value: 'line_by_line',
            groupValue: readerMode,
            onChanged: (val) =>
                ref.read(readerModeProvider.notifier).state = val!,
          ),
          RadioListTile<String>(
            title: const Text('Непрерывно'),
            value: 'continuous',
            groupValue: readerMode,
            onChanged: (val) =>
                ref.read(readerModeProvider.notifier).state = val!,
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _FontSizeSlider extends StatelessWidget {
  const _FontSizeSlider({required this.fontSize});
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Text('A', style: TextStyle(fontSize: 14)),
          Expanded(
            child: Slider(
              value: fontSize,
              min: 16,
              max: 36,
              divisions: 10,
              label: '${fontSize.round()}',
              onChanged: (_) {},
            ),
          ),
          const Text('A', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
