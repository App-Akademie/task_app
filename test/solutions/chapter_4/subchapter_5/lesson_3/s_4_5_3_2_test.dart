import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_5/lesson_3/s_4_5_3_2.dart';

void main() {
  testWidgets('Validiert die Text-Widgets in der Column',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: S4532(),
    ));

    expect(find.byType(Column), findsOneWidget);

    expect(find.text('App Akademie'), findsNWidgets(3));

    final textWidget1 = tester.widget<Text>(find.text('App Akademie').first);
    expect(textWidget1.style, isNull);

    final textWidget2 = tester.widget<Text>(find.text('App Akademie').at(1));
    expect(textWidget2.style!.fontSize, 16);
    expect(textWidget2.style!.fontWeight, FontWeight.bold);
    expect(textWidget2.style!.color, Colors.blue);

    final textWidget3 = tester.widget<Text>(find.text('App Akademie').last);
    expect(textWidget3.style!.fontSize, 10);
    expect(textWidget3.style!.fontStyle, FontStyle.italic);
    expect(textWidget3.style!.color, Colors.green);
  });
}
