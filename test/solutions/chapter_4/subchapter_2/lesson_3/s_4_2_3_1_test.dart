import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets('S4511 should return a specific StatelessWidget',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: S4231(),
      ),
    );

    final textFinder = find.text('Hello World');
    expect(textFinder, findsOneWidget);
  });
}
