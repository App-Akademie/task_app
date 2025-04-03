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



    List<Color> colors = [Colors.blueGrey, Colors.blue, Colors.cyan];

    // Überprüfen, ob die Container die richtigen Farben und Dimensionen haben und in einer Column sind

    for (int i = 0; i < colors.length; i++) {
      final finder = find.byType(Container).at(i);
      final container = tester.widget<Container>(finder);

      expect(container, isNotNull);
      expect(container.color ?? (container.decoration as BoxDecoration).color, colors[i]);
      expect(container.constraints,
          const BoxConstraints.tightFor(width: 100, height: 100));
    }
  });
}
