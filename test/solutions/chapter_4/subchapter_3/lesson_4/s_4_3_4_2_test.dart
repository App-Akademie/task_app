import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets('ShowHideNameWidget Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: S4342(),
    ));

    final nameTextFinder = find.descendant(
      of: find.byType(Column),
      matching: find.byWidgetPredicate(
        (widget) =>
            widget is Text &&
            (widget).data!.isNotEmpty &&
            !(widget.data == 'Name anzeigen' ||
                widget.data == 'Name verstecken'),
      ),
    );

    expect(nameTextFinder, findsNothing);

    await tester.tap(find.text("Name anzeigen"));
    await tester.pump();

    expect(nameTextFinder, findsOneWidget);

    await tester.tap(find.text("Name verstecken"));
    await tester.pump();

    expect(nameTextFinder, findsNothing);
  });
}
