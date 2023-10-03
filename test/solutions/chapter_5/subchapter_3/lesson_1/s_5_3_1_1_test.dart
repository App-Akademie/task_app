import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_3/lesson_1/s_5_3_1_1.dart';

void main() {
  testWidgets('Asset-Bild wird angezeigt', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S5311(),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
  });
}
