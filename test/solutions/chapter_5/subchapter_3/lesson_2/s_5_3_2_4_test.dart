import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_3/lesson_2/s_5_3_2_4.dart';

void main() {
  testWidgets('CachedNetworkImage zeigt Thumbnail als placeholder (any widget)',
      (WidgetTester tester) async {
    // App initialisieren
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S5324(),
        ),
      ),
    );

    await tester.pump();

    final cachedNetworkImage =
        tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
    final placeholder = cachedNetworkImage.placeholder;
    expect(placeholder, isNotNull);
  });
}
