import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_5/lesson_3/s_4_5_3_1.dart';

void main() {
  testWidgets('Test für Container in Column mit Farben und Dimensionen',
      (WidgetTester tester) async {
    // Unsere App im Test aufbauen und einen Frame auslösen
    await tester.pumpWidget(const MaterialApp(
      home: S4531(),
    ));

    // Überprüfen, ob eine Column vorhanden ist
    expect(find.byType(Column), findsOneWidget);

    // Überprüfen, ob die Container die richtigen Farben und Dimensionen haben und in einer Column sind
    final finder = find.byType(Container).at(0);
    final container = tester.widget<Container>(finder);

    expect(container, isNotNull);
    expect(container.color, Colors.blueGrey);
    expect(container.constraints,
        const BoxConstraints.tightFor(width: 100, height: 100));

    final finder2 = find.byType(Container).at(1);
    final container2 = tester.widget<Container>(finder2);

    expect(container2, isNotNull);
    expect(container2.color, Colors.blue);
    expect(container2.constraints,
        const BoxConstraints.tightFor(width: 100, height: 100));

    final finder3 = find.byType(Container).at(2);
    final container3 = tester.widget<Container>(finder3);

    expect(container3, isNotNull);
    expect(container3.color, Colors.cyan);
    expect(container3.constraints,
        const BoxConstraints.tightFor(width: 100, height: 100));
  });
}
