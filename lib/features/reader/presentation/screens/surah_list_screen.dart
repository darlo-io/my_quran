import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/presentation/providers/reader_providers.dart';
import 'package:quran_app/shared/widgets/app_widgets.dart';

class SurahListScreen extends ConsumerWidget {
  const SurahListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final surahsAsync = ref.watch(surahListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Суры'),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_outline),
            onPressed: () => context.push(AppRoutes.readerBookmarks),
            tooltip: 'Закладки',
          ),
          IconButton(
            icon: const Icon(Icons.tune_outlined),
            onPressed: () => context.push(AppRoutes.readerSettings),
            tooltip: 'Настройки чтения',
          ),
        ],
      ),
      body: surahsAsync.when(
        data: (surahs) => _SurahList(surahs: surahs),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => EmptyStateWidget(
          message: 'Ошибка загрузки: $e',
          actionLabel: 'Повторить',
          onAction: () => ref.invalidate(surahListProvider),
        ),
      ),
    );
  }
}

class _SurahList extends StatelessWidget {
  const _SurahList({required this.surahs});

  final List<Surah> surahs;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      itemCount: surahs.length,
      separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
      itemBuilder: (context, index) {
        final surah = surahs[index];
        return _SurahTile(surah: surah);
      },
    );
  }
}

class _SurahTile extends StatelessWidget {
  const _SurahTile({required this.surah});

  final Surah surah;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: _SurahNumberCircle(
        number: surah.number,
        isMeccan: surah.revelationType == 'meccan',
      ),
      title: Text(
        surah.nameTranslated,
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        '${surah.nameArabic} • ${surah.ayahCount} аятов',
        style: theme.textTheme.bodySmall,
      ),
      trailing: Text(
        surah.nameArabic,
        style: theme.textTheme.headlineSmall?.copyWith(
          fontFamily: 'Uthmanic',
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xs,
      ),
      onTap: () => context.push(
        '${AppRoutes.readerSurah.replaceAll(':surahId', '')}${surah.id}',
      ),
    );
  }
}

class _SurahNumberCircle extends StatelessWidget {
  const _SurahNumberCircle({required this.number, required this.isMeccan});

  final int number;
  final bool isMeccan;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isMeccan
            ? theme.colorScheme.primaryContainer
            : theme.colorScheme.tertiaryContainer,
      ),
      alignment: Alignment.center,
      child: Text(
        '$number',
        style: theme.textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: isMeccan
              ? theme.colorScheme.onPrimaryContainer
              : theme.colorScheme.onTertiaryContainer,
        ),
      ),
    );
  }
}
