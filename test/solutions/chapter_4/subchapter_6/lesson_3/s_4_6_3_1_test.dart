import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_6/lesson_3/s_4_6_3_1.dart';

void main() {
  testWidgets('Asset-Bild wird angezeigt', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S4631(),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
  });
}
