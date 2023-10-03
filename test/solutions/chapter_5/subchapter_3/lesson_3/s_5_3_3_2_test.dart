import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_3/lesson_3/s_5_3_3_2.dart';

void main() {
  testWidgets('MultiImagePickerWidget zeigt einen IconButton-Widget',
      (WidgetTester tester) async {
    // App initialisieren
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S5332(),
        ),
      ),
    );

    expect(find.byType(IconButton), findsOneWidget);
  });
}
