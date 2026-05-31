import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' show Value;
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';

final availablePackagesProvider =
    FutureProvider<List<ContentPackData>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  return db.contentPackDao.getAvailable();
});

final installedPackagesProvider =
    FutureProvider<List<InstalledPackageData>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  return db.contentPackDao.getInstalled();
});

class ContentPackScreen extends ConsumerWidget {
  const ContentPackScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final installedAsync = ref.watch(installedPackagesProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Контент-пакеты')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Installed section
          Text('Установленные', style: theme.textTheme.titleMedium),
          const SizedBox(height: AppSpacing.sm),
          installedAsync.when(
            data: (packages) {
              if (packages.isEmpty) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.xl),
                    child: Column(
                      children: [
                        Icon(Icons.inventory_2_outlined,
                            size: 40, color: theme.colorScheme.outline),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          'Нет установленных пакетов',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return Column(
                children: packages
                    .map((pkg) => _PackageTile(
                          title: 'Пакет #${pkg.packageId}',
                          subtitle: 'v${pkg.installedVersion}',
                          installed: pkg.installedAt,
                          status: pkg.status,
                        ))
                    .toList(),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Ошибка: $e')),
          ),
          const SizedBox(height: AppSpacing.xl),
          // Available section
          Text('Доступные', style: theme.textTheme.titleMedium),
          const SizedBox(height: AppSpacing.sm),
          _AvailablePackages(),
        ],
      ),
    );
  }
}

class _AvailablePackages extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableAsync = ref.watch(availablePackagesProvider);
    final theme = Theme.of(context);

    return availableAsync.when(
      data: (packages) {
        if (packages.isEmpty) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                children: [
                  Icon(Icons.cloud_download_outlined,
                      size: 40, color: theme.colorScheme.outline),
                  const SizedBox(height: AppSpacing.md),
                  Text(
                    'Нет доступных пакетов',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'Подключитесь к интернету для загрузки списка',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          );
        }

        return Column(
          children: packages
              .map((pkg) => _AvailablePackageTile(
                    title: '${pkg.type} (${pkg.languageCode})',
                    subtitle: 'v${pkg.version} · ${_formatSize(pkg.sizeBytes)}',
                    onInstall: () {
                      final db = ref.read(appDatabaseProvider);
                      db.contentPackDao.install(
                        InstalledPackagesCompanion(
                          packageId: Value(pkg.id),
                          installedVersion: Value(pkg.version),
                          installedAt: Value(DateTime.now()),
                          status: const Value('installed'),
                        ),
                      ).then(
                        (_) => ref.invalidate(installedPackagesProvider),
                      );
                    },
                  ))
              .toList(),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Ошибка: $e')),
    );
  }

  String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}

class _PackageTile extends StatelessWidget {
  const _PackageTile({
    required this.title,
    required this.subtitle,
    required this.installed,
    required this.status,
  });

  final String title;
  final String subtitle;
  final DateTime installed;
  final String status;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check_circle,
        color: status == 'installed' ? Colors.green : Colors.orange,
      ),
      title: Text(title),
      subtitle: Text('$subtitle · ${_formatDate(installed)}'),
      trailing: const Icon(Icons.more_vert),
    );
  }

  String _formatDate(DateTime d) {
    return '${d.day}.${d.month}.${d.year}';
  }
}

class _AvailablePackageTile extends StatelessWidget {
  const _AvailablePackageTile({
    required this.title,
    required this.subtitle,
    required this.onInstall,
  });

  final String title;
  final String subtitle;
  final VoidCallback onInstall;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.cloud_download_outlined),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: FilledButton.tonal(
        onPressed: onInstall,
        child: const Text('Установить'),
      ),
    );
  }
}
