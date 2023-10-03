import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_1/lesson_3/s_5_1_3_3.dart';

void main() {
  testWidgets('Stilvoller Container Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S5133(),
        ),
      ),
    );

    final containerWidget = tester.widget<Container>(find.byType(Container));

    expect(containerWidget.padding, isNotNull);

    expect(containerWidget.decoration, isNotNull);
    final decoration = containerWidget.decoration as BoxDecoration;
    expect(decoration.borderRadius, isNotNull);
    expect(decoration.color, isNotNull);
    expect(decoration.boxShadow, isNotNull);

    expect(find.byType(Text), findsOneWidget);
  });
}
