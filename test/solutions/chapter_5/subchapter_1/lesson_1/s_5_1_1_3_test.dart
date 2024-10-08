import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_4/lesson_4/s_4_4_4_1.dart';

void main() {
  testWidgets('Prüft, ob der benutzerdefinierte Button vorhanden ist',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: S4441(),
      ),
    ));

    expect(find.byType(Container), findsOneWidget);

    final containerWidget = tester.widget<Container>(find.byType(Container));

    expect(containerWidget.decoration, isNotNull);
    expect(containerWidget.padding, isNotNull);
  });
}
