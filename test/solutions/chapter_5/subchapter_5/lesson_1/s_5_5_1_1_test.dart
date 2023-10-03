import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_5/lesson_1/s_5_5_1_1.dart';

void main() {
  testWidgets(
      'Two counters should increment asynchronously when button is pressed',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5511(),
      ),
    ));

    containsNumber(widget) =>
        widget is Text && RegExp(r'\d+').hasMatch((widget).data!);

    final button = find.byType(ElevatedButton);
    final countersTextBefore = find.byWidgetPredicate((widget) =>
        containsNumber(widget) && (widget as Text).data!.contains('0'));

    expect(countersTextBefore, findsNWidgets(2));

    await tester.tap(button);
    await tester.pumpAndSettle(const Duration(milliseconds: 600));

    final countersTextAfter = find.byWidgetPredicate((widget) =>
        containsNumber(widget) && (widget as Text).data!.contains('1'));

    expect(countersTextAfter, findsNWidgets(2));
  });
}
