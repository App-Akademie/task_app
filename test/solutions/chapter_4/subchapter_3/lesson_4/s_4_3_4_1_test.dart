import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets(
      'Should display a non-empty string when "Name anzeigen" button is pressed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: S4341(),
      ),
    );

    final initialTextFinder = find.byWidgetPredicate(
      (Widget widget) => widget is Text && (widget.data?.isEmpty ?? true),
      description: 'Text with an empty string',
    );
    expect(initialTextFinder, findsOneWidget);

    final buttonFinder = find.widgetWithText(ElevatedButton, 'Name anzeigen');
    await tester.tap(buttonFinder);

    await tester.pump();

    final nonEmptyTextFinder = find.byWidgetPredicate(
      (Widget widget) => widget is Text && (widget.data?.isNotEmpty ?? false),
      description: 'Text with a non-empty string',
    );
    expect(nonEmptyTextFinder, findsNWidgets(2));
  });
}
