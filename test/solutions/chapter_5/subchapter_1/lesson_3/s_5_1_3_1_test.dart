import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_1/lesson_3/s_5_1_3_1.dart';

void main() {
  testWidgets('Prüft, ob 4 verschiedene Google-Schriftarten verwendet wurden',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5131(),
      ),
    ));

    final textFinders = find.byType(Text);

    expect(textFinders, findsNWidgets(4));

    final fonts = textFinders.evaluate().map((element) {
      final Text textWidget = element.widget as Text;
      final TextStyle? style = textWidget.style;

      return style?.fontFamily;
    }).toList();

    expect(fonts.toSet().length,
        4); // Überprüft, ob alle 4 Schriftarten unterschiedlich sind
  });
}
