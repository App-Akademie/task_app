import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets('Überprüft die ListView mit min. 5 Produkten',
      (WidgetTester tester) async {
    // App starten
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S4536(),
      ),
    ));
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(ListTile), findsWidgets);

    var listTileCount = find.byType(ListTile).evaluate().length;
    expect(listTileCount, greaterThanOrEqualTo(5));
  });
}
