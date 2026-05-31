import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';

final installedPackagesProvider =
    FutureProvider<List<InstalledPackageData>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  final packages = await db.contentPackDao.getInstalled();
  return packages;
});

class StorageScreen extends ConsumerWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packagesAsync = ref.watch(installedPackagesProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Хранилище')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          // Storage usage card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.md),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: 0.35,
                          strokeWidth: 8,
                          backgroundColor: theme.colorScheme.surfaceContainerHighest,
                          color: theme.colorScheme.primary,
                        ),
                        Center(
                          child: Text(
                            '35%',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Text(
                    'Использовано 127 МБ из 500 МБ',
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    'Свободно 373 МБ',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Installed content
          Text('Установленные пакеты', style: theme.textTheme.titleMedium),
          const SizedBox(height: AppSpacing.sm),

          packagesAsync.when(
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
                children: packages.map((pkg) => ListTile(
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: Text('Пакет #${pkg.packageId}'),
                  subtitle: Text('v${pkg.installedVersion}'),
                  trailing: TextButton(
                    onPressed: () {
                      ref.read(appDatabaseProvider).contentPackDao.uninstall(pkg.packageId);
                      ref.invalidate(installedPackagesProvider);
                    },
                    child: const Text('Удалить'),
                  ),
                )).toList(),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Ошибка: $e')),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Clear cache button
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.cleaning_services_outlined),
            label: const Text('Очистить кэш'),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
            ),
          ),
        ],
      ),
    );
  }
}
