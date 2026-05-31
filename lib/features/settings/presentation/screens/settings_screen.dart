import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/providers.dart';
import 'package:quran_app/app/theme/theme_notifier.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: ListView(
        children: [
          // Theme section
          _SectionHeader(title: 'Оформление'),
          RadioListTile<AppThemeMode>(
            title: const Text('Светлая тема'),
            value: AppThemeMode.light,
            groupValue: themeNotifier.mode,
            onChanged: (v) => themeNotifier.setThemeMode(v!),
          ),
          RadioListTile<AppThemeMode>(
            title: const Text('Тёмная тема'),
            value: AppThemeMode.dark,
            groupValue: themeNotifier.mode,
            onChanged: (v) => themeNotifier.setThemeMode(v!),
          ),
          RadioListTile<AppThemeMode>(
            title: const Text('Системная'),
            value: AppThemeMode.system,
            groupValue: themeNotifier.mode,
            onChanged: (v) => themeNotifier.setThemeMode(v!),
          ),
          const Divider(),

          // Language section
          _SectionHeader(title: 'Язык'),
          ListTile(
            title: const Text('Русский'),
            trailing: const Icon(Icons.check),
            onTap: () {},
          ),
          ListTile(
            title: const Text('English'),
            onTap: () {},
          ),
          const Divider(),

          // Reading section
          _SectionHeader(title: 'Чтение'),
          SwitchListTile(
            title: const Text('Показывать перевод'),
            value: true,
            onChanged: (_) {},
          ),
          SwitchListTile(
            title: const Text('Показывать транслитерацию'),
            value: false,
            onChanged: (_) {},
          ),
          const Divider(),

          // Notifications
          _SectionHeader(title: 'Уведомления'),
          SwitchListTile(
            title: const Text('Напоминания о чтении'),
            subtitle: const Text('Ежедневные напоминания'),
            value: true,
            onChanged: (_) {},
          ),
          SwitchListTile(
            title: const Text('Напоминания Hifz'),
            subtitle: const Text('Напоминания о повторении'),
            value: true,
            onChanged: (_) {},
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
