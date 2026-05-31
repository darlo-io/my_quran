import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/app_constants.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');
final searchHistoryProvider = StateProvider<List<String>>((ref) => []);

final searchResultsProvider =
    FutureProvider.family<List<AyahData>, String>((ref, query) async {
  if (query.length < AppConstants.minSearchQueryLength) return [];
  final db = ref.watch(appDatabaseProvider);
  return db.ayahDao.searchArabic(query);
});

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = ref.watch(searchQueryProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Поиск по Корану...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            ref.read(searchQueryProvider.notifier).state = value.trim();
          },
        ),
        actions: [
          if (query.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _controller.clear();
                ref.read(searchQueryProvider.notifier).state = '';
              },
            ),
        ],
      ),
      body: query.length < AppConstants.minSearchQueryLength
          ? const _RecentSearches()
          : _SearchResultsView(query: query),
    );
  }
}

class _RecentSearches extends ConsumerWidget {
  const _RecentSearches();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final history = ref.watch(searchHistoryProvider);

    if (history.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search, size: 64, color: theme.colorScheme.outline),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'Введите минимум 2 символа для поиска',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        _HistoryHeader(
          onClear: () =>
              ref.read(searchHistoryProvider.notifier).state = [],
        ),
        ...history.map(
          (item) => ListTile(
            leading: const Icon(Icons.history),
            title: Text(item),
            onTap: () {
              ref.read(searchQueryProvider.notifier).state = item;
              _addToHistory(ref, item);
            },
          ),
        ),
      ],
    );
  }
}

class _HistoryHeader extends StatelessWidget {
  const _HistoryHeader({required this.onClear});
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('История поиска', style: theme.textTheme.titleSmall),
          TextButton(onPressed: onClear, child: const Text('Очистить')),
        ],
      ),
    );
  }
}

class _SearchResultsView extends ConsumerWidget {
  const _SearchResultsView({required this.query});
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultsAsync = ref.watch(searchResultsProvider(query));
    final theme = Theme.of(context);

    return resultsAsync.when(
      data: (results) {
        if (results.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search_off,
                    size: 64, color: theme.colorScheme.outline),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  'Ничего не найдено по запросу «$query»',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }

        _addToHistory(ref, query);

        return ListView.builder(
          padding: const EdgeInsets.all(AppSpacing.lg),
          itemCount: results.length,
          itemBuilder: (context, index) {
            final ayah = results[index];
            return _SearchResultCard(
              surahId: ayah.surahId,
              ayahNumber: ayah.ayahNumber,
              arabicText: ayah.arabicText,
              highlight: query,
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('Ошибка поиска: $e'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () =>
                  ref.invalidate(searchResultsProvider(query)),
              child: const Text('Повторить'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchResultCard extends StatelessWidget {
  const _SearchResultCard({
    required this.surahId,
    required this.ayahNumber,
    required this.arabicText,
    required this.highlight,
  });

  final int surahId;
  final int ayahNumber;
  final String arabicText;
  final String highlight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: InkWell(
        onTap: () => context.push(
          '${AppRoutes.readerSurah.replaceAll(':surahId', '')}$surahId'
          '?ayahId=$ayahNumber',
        ),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Сура $surahId · Аят $ayahNumber',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                arabicText,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontFamily: 'Uthmanic',
                  height: 1.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _addToHistory(WidgetRef ref, String query) {
  final history = List<String>.from(ref.read(searchHistoryProvider));
  history.remove(query);
  history.insert(0, query);
  if (history.length > 20) history.removeLast();
  ref.read(searchHistoryProvider.notifier).state = history;
}
