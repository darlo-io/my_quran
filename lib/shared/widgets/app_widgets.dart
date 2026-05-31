import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWidgets {
  AppWidgets._();

  static const double minTouchTarget = 48.0;
}

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.loading,
    this.error,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace stackTrace)? error;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () =>
          loading?.call() ??
          const Center(child: CircularProgressIndicator()),
      error: (e, st) =>
          error?.call(e, st) ??
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.error_outline,
                    size: 48, color: Theme.of(context).colorScheme.error),
                const SizedBox(height: 16),
                Text(e.toString()),
                const SizedBox(height: 16),
                ElevatedButton(onPressed: () {}, child: const Text('Retry')),
              ],
            ),
          ),
    );
  }
}

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    super.key,
    required this.message,
    this.actionLabel,
    this.onAction,
    this.icon,
  });

  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon ?? Icons.inbox_outlined,
              size: 64,
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.center,
            ),
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onAction,
                child: Text(actionLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
