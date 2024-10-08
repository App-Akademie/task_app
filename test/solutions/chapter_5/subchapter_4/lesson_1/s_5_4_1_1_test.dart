import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_2/lesson_4/s_5_2_4_3.dart';

void main() {
  testWidgets('Button should throw error and display SnackBar',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5243(),
      ),
    ));

    final button = find.byType(ElevatedButton);
    await tester.tap(button);

    await tester.pump();

    final snackBar = find.byType(SnackBar);
    expect(snackBar, findsOneWidget);

    final snackBarContent = find.descendant(
      of: snackBar,
      matching: find.byType(Text),
    );
    expect(snackBarContent, findsOneWidget);
  });
}
