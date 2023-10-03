import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_3/lesson_3/s_5_3_3_1.dart';

void main() {
  testWidgets('ImagePickerWidget zeigt zwei IconButton-Widgets',
      (WidgetTester tester) async {
    // App initialisieren
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S5331(),
        ),
      ),
    );

    expect(find.byType(IconButton), findsNWidgets(2));
  });
}
