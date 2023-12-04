import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('vowel checks', () {
    test('empty string has no vowels', () {
      expect(countVowels(''), 0);
    });
    test('a has one vowel', () {
      expect(countVowels('a'), 1);
    });
    test('b has no vowels', () {
      expect(countVowels('b'), 0);
    });
    test('ab has one vowel', () {
      expect(countVowels('ab'), 1);
    });
    test('abc has one vowel', () {
      expect(countVowels('abc'), 1);
    });
    test('aeiou has five vowels', () {
      expect(countVowels('aeiou'), 5);
    });
    test('aeiouyAEIOUY has twelve vowels', () {
      expect(countVowels('aeiouyAEIOUY'), 10);
    });
  });
}
