import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:drift/drift.dart' show Value;
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/core/database/tables.dart';
import 'package:quran_app/features/audio/application/services/audio_player_manager.dart';
import 'package:quran_app/features/audio/data/repositories/audio_repository_impl.dart';
import 'package:quran_app/features/audio/domain/entities/reciter.dart';
import 'package:quran_app/features/audio/presentation/providers/audio_providers.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/presentation/providers/reader_providers.dart';
import 'package:quran_app/shared/design_system/typography.dart';
import 'package:quran_app/shared/widgets/app_widgets.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  const ReaderScreen({super.key, required this.surahId, this.ayahId});

  final int surahId;
  final int? ayahId;

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final surahAsync = ref.watch(surahDetailProvider(widget.surahId));
    final ayahsAsync = ref.watch(ayahsProvider(widget.surahId));
    final readerMode = ref.watch(readerModeProvider);
    final showTranslation = ref.watch(showTranslationProvider);
    final showTransliteration = ref.watch(showTransliterationProvider);
    final fontSize = ref.watch(fontSizeProvider);

    return Scaffold(
      body: surahAsync.when(
        data: (surah) => ayahsAsync.when(
          data: (ayahs) => CustomScrollView(
            controller: _scrollController,
            slivers: [
              _ReaderAppBar(
            surah: surah,
            ayahs: ayahs,
            onPlaySurah: () {
              final reciter = ref.read(currentReciterProvider);
              if (reciter != null) {
                final manager = ref.read(audioPlayerManagerProvider);
                // Build AudioTrack and load
              }
            },
          ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                sliver: readerMode == 'line_by_line'
                    ? _LineByLineView(
                        ayahs: ayahs,
                        showTranslation: showTranslation,
                        showTransliteration: showTransliteration,
                        fontSize: fontSize,
                        surahId: widget.surahId,
                      )
                    : _ContinuousView(
                        ayahs: ayahs,
                        fontSize: fontSize,
                        surahId: widget.surahId,
                      ),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(bottom: 80),
              ),
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, st) => EmptyStateWidget(
            message: 'Ошибка загрузки аятов: $e',
            actionLabel: 'Повторить',
            onAction: () => ref.invalidate(ayahsProvider(widget.surahId)),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => EmptyStateWidget(
          message: 'Ошибка загрузки суры: $e',
          actionLabel: 'Повторить',
          onAction: () => ref.invalidate(surahDetailProvider(widget.surahId)),
        ),
      ),
      bottomSheet: _ReaderBottomBar(
        readerMode: readerMode,
        onModeChanged: (mode) =>
            ref.read(readerModeProvider.notifier).state = mode,
      ),
    );
  }
}

class _ReaderAppBar extends StatelessWidget {
  const _ReaderAppBar({
    required this.surah,
    required this.ayahs,
    required this.onPlaySurah,
  });

  final Surah surah;
  final List<Ayah> ayahs;
  final VoidCallback onPlaySurah;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      pinned: true,
      expandedHeight: 100,
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (surah.nameArabic.isNotEmpty)
              Text(
                surah.nameArabic,
                style: AppTypography.arabicDisplay(context, fontSize: 24),
              ),
            Text(
              surah.nameTranslated,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => context.push(AppRoutes.search),
        ),
        IconButton(
          icon: const Icon(Icons.headphones),
          onPressed: onPlaySurah,
          tooltip: 'Слушать суру',
        ),
      ],
    );
  }
}

class _LineByLineView extends StatelessWidget {
  const _LineByLineView({
    required this.ayahs,
    required this.showTranslation,
    required this.showTransliteration,
    required this.fontSize,
    required this.surahId,
  });

  final List<Ayah> ayahs;
  final bool showTranslation;
  final bool showTransliteration;
  final double fontSize;
  final int surahId;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final ayah = ayahs[index];
          return _AyahBlock(
            ayah: ayah,
            showTranslation: showTranslation,
            fontSize: fontSize,
            surahId: surahId,
          );
        },
        childCount: ayahs.length,
      ),
    );
  }
}

class _ContinuousView extends StatelessWidget {
  const _ContinuousView({
    required this.ayahs,
    required this.fontSize,
    required this.surahId,
  });

  final List<Ayah> ayahs;
  final double fontSize;
  final int surahId;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
        child: RichText(
          textAlign: TextAlign.justify,
          textDirection: TextDirection.rtl,
          text: TextSpan(
            style: AppTypography.arabicBody(context, fontSize: fontSize),
            children: ayahs.asMap().entries.map((entry) {
              final i = entry.key;
              final ayah = entry.value;
              return TextSpan(
                text: '${ayah.arabicText} ${_ayahEndMarker(i + 1)} ',
                children: [
                  WidgetSpan(
                    child: _AyahNumberBadge(number: i + 1),
                    alignment: PlaceholderAlignment.middle,
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  String _ayahEndMarker(int number) {
    return '\u06DD$number';
  }
}

class _AyahBlock extends ConsumerWidget {
  const _AyahBlock({
    required this.ayah,
    required this.showTranslation,
    required this.fontSize,
    required this.surahId,
  });

  final Ayah ayah;
  final bool showTranslation;
  final double fontSize;
  final int surahId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final reciter = ref.watch(currentReciterProvider);
    final playbackState = ref.watch(audioPlaybackStateProvider).valueOrNull;

    // Bookmark state
    final isBookmarkedAsync = ref.watch(ayahBookmarkProvider(ayah.id));
    final isBookmarked = isBookmarkedAsync.valueOrNull ?? false;

    // Translation text
    final translationMapAsync = ref.watch(translationMapProvider(surahId));
    final translationText = (showTranslation)
        ? (translationMapAsync.valueOrNull?[ayah.ayahNumber] ?? '')
        : null;
    final hasTranslation = translationText != null && translationText.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _AyahNumberBadge(number: ayah.ayahNumber),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                      color: isBookmarked ? theme.colorScheme.primary : null,
                    ),
                    onPressed: () => _toggleBookmark(ref, isBookmarked),
                    iconSize: 20,
                    tooltip: isBookmarked ? 'Удалить закладку' : 'Добавить закладку',
                    constraints: const BoxConstraints(
                      minWidth: 40,
                      minHeight: 40,
                    ),
                  ),
                  if (reciter != null)
                    IconButton(
                      icon: Icon(
                        playbackState == AudioPlaybackState.playing
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_outline,
                      ),
                      onPressed: () => _playAyah(ref, reciter),
                      iconSize: 20,
                      constraints: const BoxConstraints(
                        minWidth: 40,
                        minHeight: 40,
                      ),
                      tooltip: 'Слушать аят',
                    ),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          // Arabic text
          Semantics(
            label: 'Аят ${ayah.ayahNumber}, сура $surahId',
            child: SelectableText(
            ayah.arabicText,
            textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              style: AppTypography.arabicBody(context, fontSize: fontSize),
            ),
          ),
          // Translation
          if (hasTranslation) ...[
            const SizedBox(height: AppSpacing.sm),
            Text(
              translationText!,
              style: AppTypography.translationBody(context),
            ),
          ] else if (showTranslation && translationMapAsync.isLoading) ...[
            const SizedBox(height: AppSpacing.sm),
            const SizedBox(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ],
        ],
      ),
    );
  }

  void _toggleBookmark(WidgetRef ref, bool isBookmarked) {
    final db = ref.read(appDatabaseProvider);
    if (isBookmarked) {
      db.bookmarkDao.getByAyah(ayah.id).then((bm) {
        if (bm != null) db.bookmarkDao.deleteById(bm.id);
      });
    } else {
      db.bookmarkDao.insert(
        BookmarksCompanion(
          ayahId: Value(ayah.id),
          createdAt: Value(DateTime.now()),
          updatedAt: Value(DateTime.now()),
        ),
      );
    }
    ref.invalidate(ayahBookmarkProvider(ayah.id));
  }
}

class _AyahNumberBadge extends StatelessWidget {
  const _AyahNumberBadge({required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.secondaryContainer,
        border: Border.all(
          color: theme.colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        '$number',
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onSecondaryContainer,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ReaderBottomBar extends StatelessWidget {
  const _ReaderBottomBar({
    required this.readerMode,
    required this.onModeChanged,
  });

  final String readerMode;
  final ValueChanged<String> onModeChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(color: theme.colorScheme.outlineVariant),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'line_by_line',
                  label: Text('Построчно'),
                  icon: Icon(Icons.view_list),
                ),
                ButtonSegment(
                  value: 'continuous',
                  label: Text('Непрерывно'),
                  icon: Icon(Icons.view_stream),
                ),
              ],
              selected: {readerMode},
              onSelectionChanged: (selected) {
                onModeChanged(selected.first);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Bookmark provider removed - defined in reader_providers.dart

void _playAyah(WidgetRef ref, Reciter reciter) {
  final manager = ref.read(audioPlayerManagerProvider);
  final surahId = ref.read(currentSurahIdProvider);
  if (surahId == null) return;

  final repo = ref.read(audioRepositoryProvider);
  repo.getStreamUrl(surahId, reciter.id).then((result) {
    result.fold(
      (_) {},
      (url) {
        final track = AudioTrack(
          surahId: surahId,
          surahName: '',
          surahArabic: '',
          reciterId: reciter.id,
          reciterName: reciter.name,
          audioUrl: url,
          durationSeconds: 60,
        );
        manager.loadTrack(track).then((_) => manager.play());
      },
    );
  });
}
