import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_1/lesson_1/s_5_1_1_3.dart';

void main() {
  testWidgets('Prüft, ob der benutzerdefinierte Button vorhanden ist',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S5113(),
      ),
    ));

    expect(find.byType(Container), findsOneWidget);

    final containerWidget = tester.widget<Container>(find.byType(Container));

    expect(containerWidget.decoration, isNotNull);
    expect(containerWidget.padding, isNotNull);
  });
}
