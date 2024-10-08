import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_4/subchapter_4/lesson_2/s_4_4_2_7.dart';

void main() {
  testWidgets('ImagePickerWidget zeigt zwei IconButton-Widgets',
      (WidgetTester tester) async {
    // App initialisieren
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S4427(),
        ),
      ),
    );

    expect(find.byType(IconButton), findsNWidgets(2));
  });
}
