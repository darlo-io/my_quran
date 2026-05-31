import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/audio/domain/entities/reciter.dart';
import 'package:quran_app/features/audio/presentation/providers/audio_providers.dart';
import 'package:quran_app/shared/widgets/app_widgets.dart';

class AudioRecitersScreen extends ConsumerWidget {
  const AudioRecitersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recitersAsync = ref.watch(recitersProvider);
    final selectedSlug = ref.watch(selectedReciterSlugProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Чтецы'),
        actions: [
          if (selectedSlug != null)
            TextButton(
              onPressed: () => ref.read(selectedReciterSlugProvider.notifier).state = null,
              child: const Text('Сбросить'),
            ),
        ],
      ),
      body: recitersAsync.when(
        data: (reciters) {
          if (reciters.isEmpty) {
            return const EmptyStateWidget(
              message: 'Нет доступных чтецов',
              icon: Icons.headphones,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
            itemCount: reciters.length,
            separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
            itemBuilder: (context, index) {
              final reciter = reciters[index];
              final isSelected = selectedSlug == reciter.slug;
              return _ReciterTile(
                reciter: reciter,
                isSelected: isSelected,
                onTap: () {
                  ref.read(selectedReciterSlugProvider.notifier).state = reciter.slug;
                  ref.read(currentReciterProvider.notifier).state = reciter;
                  context.pop();
                },
                onPlaySample: () {
                  ref.read(currentReciterProvider.notifier).state = reciter;
                  // Navigate to play sample / first surah
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => EmptyStateWidget(
          message: 'Ошибка загрузки: $e',
          actionLabel: 'Повторить',
          onAction: () => ref.invalidate(recitersProvider),
        ),
      ),
    );
  }
}

class _ReciterTile extends StatelessWidget {
  const _ReciterTile({
    required this.reciter,
    required this.isSelected,
    required this.onTap,
    required this.onPlaySample,
  });

  final Reciter reciter;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onPlaySample;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: isSelected
            ? theme.colorScheme.primaryContainer
            : theme.colorScheme.surfaceContainerHighest,
        child: Icon(
          Icons.person,
          color: isSelected
              ? theme.colorScheme.onPrimaryContainer
              : theme.colorScheme.onSurfaceVariant,
        ),
      ),
      title: Text(
        reciter.name,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      subtitle: Text(
        isSelected ? 'Выбран' : 'Нажмите чтобы выбрать',
        style: theme.textTheme.bodySmall?.copyWith(
          color: isSelected ? theme.colorScheme.primary : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.play_circle_outline),
            onPressed: onPlaySample,
            tooltip: 'Образец',
          ),
          if (isSelected)
            Icon(Icons.check_circle, color: theme.colorScheme.primary),
        ],
      ),
      onTap: onTap,
    );
  }
}
