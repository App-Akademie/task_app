import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_2/lesson_4/s_5_2_4_4.dart';

void main() {
  group('Tests für Listenelemente und Snackbars', () {
    testWidgets(
        "ListPicker markiert Listenelemente und zeigt Snackbar für Index außerhalb des Bereichs",
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: Scaffold(body: S5244())));

      // Find the text field
      final textField = find.byType(TextField);

      const String outOfRangeErrorText = "Index außerhalb des Bereichs";
      const String invalidIndexErrorText = "Keine gültige Zahl";

      // Test for marking the list tile
      await tester.enterText(textField, '0');
      await tester.pump();
      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is ListTile && widget.tileColor == Colors.blue,
        ),
        findsOneWidget,
      );
      expect(find.text(outOfRangeErrorText), findsNothing);
      expect(find.text(invalidIndexErrorText), findsNothing);

      // Test for index out of range
      await tester.enterText(textField, '100000');
      await tester.pumpAndSettle();
      expect(find.text(outOfRangeErrorText), findsOneWidget);
    });
    testWidgets(
        "ListPicker markiert Listenelemente und zeigt Snackbar für ungültige Indexe",
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: Scaffold(body: S5244())));

      // Find the text field
      final textField = find.byType(TextField);

      const String outOfRangeErrorText = "Index außerhalb des Bereichs";
      const String invalidIndexErrorText = "Keine gültige Zahl";

      // Test for marking the list tile
      await tester.enterText(textField, '0');
      await tester.pump();
      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is ListTile && widget.tileColor == Colors.blue,
        ),
        findsOneWidget,
      );
      expect(find.text(outOfRangeErrorText), findsNothing);
      expect(find.text(invalidIndexErrorText), findsNothing);

      // Test for invalid index
      await tester.enterText(textField, 'abc');
      await tester.pumpAndSettle();
      expect(find.text(invalidIndexErrorText), findsOneWidget);
    });
  });
}
