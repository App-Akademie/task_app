import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets(
      'Validiert den blauen Container mit der Column und zwei Text-Widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: S4533(),
    ));

    expect(find.byType(Container), findsOneWidget);

    expect(find.byType(Column), findsOneWidget);

    final container = tester.firstWidget<Container>(find.byType(Container));

    expect(container.color, Colors.blue);
    expect(container.constraints!.maxHeight, 150);
    expect(container.constraints!.maxWidth, 150);

    expect(find.text('App'), findsOneWidget);
    expect(find.text('Akademie'), findsOneWidget);

    final column = tester.firstWidget<Column>(find.byType(Column));
    expect(column.mainAxisAlignment, MainAxisAlignment.center);
  });
}
