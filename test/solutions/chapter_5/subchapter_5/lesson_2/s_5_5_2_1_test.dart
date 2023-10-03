import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_5/lesson_2/s_5_5_2_1.dart';

void main() {
  testWidgets('Progress bar should fill up slowly after button click',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5521(),
      ),
    ));

    final button = find.byType(ElevatedButton);
    final progressBar = find.byType(LinearProgressIndicator);

    expect(button, findsOneWidget);
    expect(progressBar, findsOneWidget);

    await tester.tap(button);

    await tester.pumpAndSettle(const Duration(seconds: 5));

    final progressIndicator =
        tester.widget<LinearProgressIndicator>(progressBar);
    expect(progressIndicator.value, equals(1.0));
  });
}
