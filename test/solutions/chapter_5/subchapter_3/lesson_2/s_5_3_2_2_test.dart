import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_5/subchapter_3/lesson_2/s_5_3_2_2.dart';

void main() {
  testWidgets('CachedNetworkImage hat Error Widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S5322(),
        ),
      ),
    );

    final cachedNetworkImage =
        tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
    expect(cachedNetworkImage.errorWidget, isNotNull);
  });
}
