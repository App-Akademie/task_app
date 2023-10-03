import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_5/lesson_2/s_5_5_2_3.dart';

void main() {
  testWidgets('Test Würfel-Funktionalität', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: S5523()));
    expect(find.byType(ElevatedButton), findsOneWidget);
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    expect(find.text('Würfel wird geworfen...'), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    expect(find.text('Würfel wird geworfen...'), findsNothing);
    expect(
        find.byWidgetPredicate((Widget widget) =>
            widget is Text && widget.data != 'Würfel wird geworfen...'),
        findsNWidgets(2));
  });
}
