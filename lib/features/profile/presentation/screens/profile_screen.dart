import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Профиль')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Profile header
          Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: theme.colorScheme.primaryContainer,
                    child: Icon(Icons.person,
                        color: theme.colorScheme.onPrimaryContainer, size: 32),
                  ),
                  const SizedBox(width: AppSpacing.lg),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Гость',
                            style: theme.textTheme.titleMedium),
                        Text('Войдите для синхронизации',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            )),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () => context.push(AppRoutes.authLogin),
                    child: const Text('Войти'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Menu items
          _MenuSection(
            title: 'Чтение',
            items: [
              _MenuItem(
                icon: Icons.translate,
                label: 'Переводы',
                onTap: () => context.push(AppRoutes.profileTranslations),
              ),
              _MenuItem(
                icon: Icons.headphones,
                label: 'Аудио',
                onTap: () => context.push(AppRoutes.profileAudio),
              ),
              _MenuItem(
                icon: Icons.bookmark_outline,
                label: 'Закладки',
                onTap: () => context.push(AppRoutes.readerBookmarks),
              ),
            ],
          ),
          _MenuSection(
            title: 'Настройки',
            items: [
              _MenuItem(
                icon: Icons.palette_outlined,
                label: 'Оформление',
                onTap: () => context.push(AppRoutes.profileSettings),
              ),
              _MenuItem(
                icon: Icons.language,
                label: 'Язык',
                onTap: () => context.push(AppRoutes.profileLanguage),
              ),
              _MenuItem(
                icon: Icons.storage,
                label: 'Хранилище',
                onTap: () => context.push(AppRoutes.profileStorage),
              ),
            ],
          ),
          _MenuSection(
            title: 'Данные',
            items: [
              _MenuItem(
                icon: Icons.bar_chart,
                label: 'Статистика',
                onTap: () => context.push(AppRoutes.profileStatistics),
              ),
              _MenuItem(
                icon: Icons.sync,
                label: 'Синхронизация',
                onTap: () {},
              ),
              _MenuItem(
                icon: Icons.info_outline,
                label: 'О приложении',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MenuSection extends StatelessWidget {
  const _MenuSection({required this.title, required this.items});

  final String title;
  final List<_MenuItem> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppSpacing.sm, bottom: AppSpacing.sm),
            child: Text(
              title,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Card(
            child: Column(
              children: items.map((item) => item).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
