import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_app/solutions/chapter_4/subchapter_4/lesson_2/s_4_4_2_5.dart';

void main() {
  testWidgets('CachedNetworkImage zeigt Shimmer als placeholder',
      (WidgetTester tester) async {
    // App initialisieren
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: S4425(),
        ),
      ),
    );

    await tester.pump();

    final cachedNetworkImage =
        tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
    final placeholder = cachedNetworkImage.placeholder;
    expect(placeholder, isNotNull);

    expect(find.byType(Shimmer), findsOneWidget);
  });
}