import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets('Text widget "Hello World" should be wrapped in a Center widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: S4521(), // Ersetzen Sie dies durch Ihr tatsächliches Widget
      ),
    );

    final textFinder = find.text('Hello World');
    final centerFinder =
        find.ancestor(of: textFinder, matching: find.byType(Center));
    expect(centerFinder, findsOneWidget);
  });
}
