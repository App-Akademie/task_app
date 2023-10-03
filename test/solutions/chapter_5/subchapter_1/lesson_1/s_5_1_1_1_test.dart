import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_1/lesson_1/s_5_1_1_1.dart';

void main() {
  testWidgets('Check the layout and widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: S5111())));

    expect(find.text('Hello World!'), findsOneWidget);

    expect(find.byType(Container), findsNWidgets(2));

    expect(
        find.byWidgetPredicate(
            (widget) => widget is Container && widget.color == Colors.red),
        findsOneWidget);
    expect(
        find.byWidgetPredicate(
            (widget) => widget is Container && widget.color == Colors.green),
        findsOneWidget);

    expect(find.byType(Switch), findsOneWidget);
  });
}
