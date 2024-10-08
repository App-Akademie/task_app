import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_4/lesson_2/s_4_4_2_8.dart';

void main() {
  testWidgets('MultiImagePickerWidget zeigt einen IconButton-Widget',
      (WidgetTester tester) async {
    // App initialisieren
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S4428(),
        ),
      ),
    );

    expect(find.byType(IconButton), findsOneWidget);
  });
}
