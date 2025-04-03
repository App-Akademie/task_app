import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets('Validiert die Struktur und die Farben der Container',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: S4535(),
    ));

    expect(find.byType(Column), findsOneWidget);

    expect(find.byType(Row), findsNWidgets(2));

    expect(find.byType(Container), findsNWidgets(4));

    final containerWidgets =
        tester.widgetList<Container>(find.byType(Container)).toList();

    List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
    expect(containerWidgets.length, colors.length);

    for (int i = 0; i < colors.length; i++) {
      expect(containerWidgets[i].color ??
          (containerWidgets[i].decoration as BoxDecoration).color, colors[i]);
    }
  });
}
