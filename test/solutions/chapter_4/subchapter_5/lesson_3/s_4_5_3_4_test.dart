import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets(
      'Validiert die Row mit zwei Text-Widgets und einem SizedBox dazwischen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: S4534(),
    ));

    expect(find.byType(Row), findsOneWidget);

    expect(find.text('App'), findsOneWidget);
    expect(find.text('Akademie'), findsOneWidget);

    expect(find.byType(SizedBox), findsOneWidget);

    final sizedBox = tester.firstWidget<SizedBox>(find.byType(SizedBox));
    expect(sizedBox.width, 64);
  });
}
