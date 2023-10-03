import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_1/lesson_1/s_5_1_1_4.dart';

void main() {
  testWidgets('Prüft die animierte Schriftgrößenänderung',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5114(),
      ),
    ));

    final textFinder = find.text('Hello, App Akademie!');

    Text textWidget = tester.widget(textFinder);
    expect(textWidget.style?.fontSize, 20.0);

    // Animation starten und zum Ende pumpen
    await tester.pumpAndSettle(const Duration(seconds: 4));

    textWidget = tester.widget(textFinder);
    expect(textWidget.style?.fontSize, 30.0);
  });
}
