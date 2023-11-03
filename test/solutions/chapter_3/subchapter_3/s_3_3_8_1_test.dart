import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/chapter_3/subchapter_3/s_3_3_8_1.dart';

void main() {
  group('reverseNumber', () {
    test('should reverse single digit numbers', () {
      expect(reverseNumber(1), 1);
      expect(reverseNumber(9), 9);
    });

    test('should reverse multiple digit numbers', () {
      expect(reverseNumber(1234), 4321);
      expect(reverseNumber(2468), 8642);
    });

    test('should handle zeros', () {
      expect(reverseNumber(100), 1);
      expect(reverseNumber(10300), 301);
    });
  });
}
