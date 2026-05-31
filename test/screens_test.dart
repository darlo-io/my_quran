import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quran_app/shared/widgets/app_widgets.dart';

void main() {
  group('AppWidgets', () {
    testWidgets('EmptyStateWidget shows message and optional action',
        (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: EmptyStateWidget(
            message: 'Test message',
            actionLabel: 'Action',
            onAction: () => tapped = true,
          ),
        ),
      ));

      expect(find.text('Test message'), findsOneWidget);
      expect(find.text('Action'), findsOneWidget);

      await tester.tap(find.text('Action'));
      expect(tapped, true);
    });

    testWidgets('EmptyStateWidget shows only message when no action',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: EmptyStateWidget(message: 'No items'),
        ),
      ));

      expect(find.text('No items'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsNothing);
    });
  });
}
