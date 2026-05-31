import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/features/audio/application/services/audio_player_manager.dart';
import 'package:quran_app/features/audio/presentation/providers/audio_providers.dart';

class MiniPlayerBar extends ConsumerWidget {
  const MiniPlayerBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playbackState = ref.watch(audioPlaybackStateProvider).valueOrNull;
    final position = ref.watch(audioPositionProvider).valueOrNull ?? Duration.zero;
    final duration = ref.watch(audioDurationProvider).valueOrNull;
    final reciter = ref.watch(currentReciterProvider);

    if (playbackState == null || playbackState == AudioPlaybackState.stopped) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final manager = ref.read(audioPlayerManagerProvider);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Progress bar
            if (duration != null)
              LinearProgressIndicator(
                value: duration.inMilliseconds > 0
                    ? position.inMilliseconds / duration.inMilliseconds
                    : 0,
                minHeight: 2,
              ),
            // Controls
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              child: Row(
                children: [
                  // Track info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          reciter?.name ?? 'Чтец',
                          style: theme.textTheme.labelMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (duration != null)
                          Text(
                            _formatDuration(position),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                      ],
                    ),
                  ),
                  // Controls
                  IconButton(
                    icon: const Icon(Icons.replay_10),
                    onPressed: () => manager.seekBackward(const Duration(seconds: 10)),
                    iconSize: 24,
                    tooltip: '-10с',
                  ),
                  IconButton(
                    icon: Icon(
                      playbackState == AudioPlaybackState.playing
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_filled,
                    ),
                    onPressed: () {
                      playbackState == AudioPlaybackState.playing
                          ? manager.pause()
                          : manager.play();
                    },
                    iconSize: 40,
                    color: theme.colorScheme.primary,
                  ),
                  IconButton(
                    icon: const Icon(Icons.forward_10),
                    onPressed: () => manager.seekForward(const Duration(seconds: 10)),
                    iconSize: 24,
                    tooltip: '+10с',
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      manager.stop();
                      ref.read(currentReciterProvider.notifier).state = null;
                      ref.read(currentSurahIdProvider.notifier).state = null;
                    },
                    iconSize: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes;
    final seconds = d.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
