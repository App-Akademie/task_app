import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('PIN hacking', () {
    test('hack PIN', () {
      expect(hackPin(), utf8.decode(base64.decode("ODUyMw==")));
    });
  });
}
