import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_3/lesson_2/s_4_3_2_3.dart';

void main() {
  testWidgets('Stilvoller Container Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S4323(),
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
