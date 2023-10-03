import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_4/lesson_1/s_5_4_1_1.dart';

void main() {
  testWidgets('Button should throw error and display SnackBar',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5411(),
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
