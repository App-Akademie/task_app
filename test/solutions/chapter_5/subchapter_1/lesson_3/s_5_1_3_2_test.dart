import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_6/lesson_5/s_4_6_5_2.dart';

void main() {
  testWidgets('FadeOutText Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: S4652()),
      ),
    );

    expect(find.byType(SizedBox), findsOneWidget);
    final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
    expect(sizedBox.width, 200);
    expect(sizedBox.height, 30);

    expect(find.byType(Text), findsOneWidget);
    final textWidget = tester.widget<Text>(find.byType(Text));
    expect(textWidget.style?.overflow, TextOverflow.fade);

    await tester.tap(find.byType(Text));
    await tester.pump();

    final textWidgetAfterTap = tester.widget<Text>(find.byType(Text));
    expect(textWidgetAfterTap.style?.overflow, TextOverflow.visible);
  });
}
