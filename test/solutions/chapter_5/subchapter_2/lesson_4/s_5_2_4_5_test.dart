import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_2/lesson_4/s_5_2_4_5.dart';

void main() {
  group('Age Validation Tests', () {
    testWidgets('Invalid age input should show SnackBar "Ungültige Eingabe"',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: S5245(),
        ),
      ));

      final textField = find.byType(TextField);
      final button = find.byType(TextButton);

      await tester.enterText(textField, 'abcd');
      await tester.tap(button);
      await tester.pump();

      expect(find.text('Ungültige Eingabe'), findsOneWidget);
    });

    testWidgets(
        'Age out of range should show SnackBar "Alter muss zwischen 0 und 100 liegen"',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: S5245(),
        ),
      ));

      final textField = find.byType(TextField);
      final button = find.byType(TextButton);

      await tester.enterText(textField, '-1');
      await tester.tap(button);
      await tester.pump();

      expect(find.text('Alter muss zwischen 0 und 100 liegen'), findsOneWidget);
    });

    testWidgets('Valid age input should show SnackBar with the age',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: S5245(),
        ),
      ));

      final textField = find.byType(TextField);
      final button = find.byType(TextButton);

      await tester.enterText(textField, '25');
      await tester.tap(button);
      await tester.pump();

      expect(find.text('25'), findsNWidgets(2));
    });
  });
}
