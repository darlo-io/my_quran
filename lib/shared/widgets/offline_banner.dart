import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/services/connectivity_service.dart';

class OfflineBanner extends ConsumerWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isConnected = ref.watch(connectivityProvider);

    return isConnected.when(
      data: (connected) {
        if (connected) return const SizedBox.shrink();
        return MaterialBanner(
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
          leading: Icon(
            Icons.wifi_off,
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
          content: Text(
            'Нет подключения к интернету',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onErrorContainer,
              fontSize: 13,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => ref.invalidate(connectivityProvider),
              child: Text(
                'Повторить',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onErrorContainer,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}
