import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_3/subchapter_3/s_3_3_8_7.dart';

void main() {
  group('PIN hacking', () {
    test('hack PIN', () {
      expect(hackPin(), utf8.decode(base64.decode("ODUyMw==")));
    });
  });
}
