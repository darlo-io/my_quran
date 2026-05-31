import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/app/router/app_routes.dart';
import 'package:quran_app/core/constants/spacing.dart';
import 'package:quran_app/core/database/app_database.dart';
import 'package:quran_app/features/reader/domain/entities/ayah.dart';
import 'package:quran_app/features/reader/domain/entities/surah.dart';
import 'package:quran_app/features/reader/presentation/providers/reader_providers.dart';

final bookmarksProvider = FutureProvider<List<BookmarkData>>((ref) async {
  final db = ref.watch(appDatabaseProvider);
  return db.bookmarkDao.getAll();
});

class BookmarksScreen extends ConsumerWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarksAsync = ref.watch(bookmarksProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Закладки')),
      body: bookmarksAsync.when(
        data: (bookmarks) {
          if (bookmarks.isEmpty) {
            return _EmptyBookmarks();
          }
          return _BookmarkList(bookmarks: bookmarks);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text('Ошибка: $e'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.invalidate(bookmarksProvider),
                child: const Text('Повторить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyBookmarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.bookmark_border,
                size: 64, color: theme.colorScheme.outline),
            const SizedBox(height: AppSpacing.lg),
            Text(
              'У вас пока нет закладок',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'Нажмите на иконку закладки рядом с аятом во время чтения',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xl),
            FilledButton.icon(
              onPressed: () => context.push(AppRoutes.readerSurahs),
              icon: const Icon(Icons.menu_book),
              label: const Text('Перейти к чтению'),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookmarkList extends ConsumerWidget {
  const _BookmarkList({required this.bookmarks});

  final List<BookmarkData> bookmarks;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.read(appDatabaseProvider);

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      itemCount: bookmarks.length,
      separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
      itemBuilder: (context, index) {
        final bookmark = bookmarks[index];
        return _BookmarkTile(
          bookmark: bookmark,
          onDelete: () async {
            await db.bookmarkDao.deleteById(bookmark.id);
            ref.invalidate(bookmarksProvider);
          },
          onTap: () {
            // Navigate to the ayah in reader
            context.push(
              '${AppRoutes.readerSurah.replaceAll(':surahId', '')}${bookmark.ayahId}',
            );
          },
        );
      },
    );
  }
}

class _BookmarkTile extends ConsumerWidget {
  const _BookmarkTile({
    required this.bookmark,
    required this.onDelete,
    required this.onTap,
  });

  final BookmarkData bookmark;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    // Get surah name from DB (simplified — show ayah info)
    return Dismissible(
      key: Key('bookmark_${bookmark.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: AppSpacing.xl),
        color: theme.colorScheme.errorContainer,
        child: Icon(Icons.delete, color: theme.colorScheme.onErrorContainer),
      ),
      onDismissed: (_) => onDelete(),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.secondaryContainer,
          child: Text(
            '${bookmark.ayahId}',
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onSecondaryContainer,
            ),
          ),
        ),
        title: Text(
          'Аят #${bookmark.ayahId}',
          style: theme.textTheme.titleMedium,
        ),
        subtitle: bookmark.note != null
            ? Text(bookmark.note!, maxLines: 1, overflow: TextOverflow.ellipsis)
            : Text(
                _formatDate(bookmark.createdAt),
                style: theme.textTheme.bodySmall,
              ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, size: 20),
          onPressed: onDelete,
        ),
        onTap: onTap,
      ),
    );
  }

  String _formatDate(DateTime date) {
    final d = date.toLocal();
    return '${d.day}.${d.month}.${d.year} ${d.hour}:${d.minute.toString().padLeft(2, '0')}';
  }
}
