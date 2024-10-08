import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets('Validiert die Struktur und die Farben der Container',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: S4333(),
    ));

    expect(
      find.byType(Column).evaluate().length == 1 &&
              find.byType(Row).evaluate().length == 2 ||
          find.byType(Row).evaluate().length == 1 &&
              find.byType(Column).evaluate().length == 2,
      isTrue,
      reason:
          'Entweder sollte 1 Column und 2 Rows ODER 1 Row und 2 Columns gefunden werden',
    );

    expect(find.byType(Container), findsNWidgets(4));

    final containerWidgets =
        tester.widgetList<Container>(find.byType(Container)).toList();

    expect(containerWidgets[0].color, Colors.red);
    expect(containerWidgets[1].color, Colors.green);
    expect(containerWidgets[2].color, Colors.blue);
    expect(containerWidgets[3].color, Colors.yellow);
  });
}
