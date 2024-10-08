import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('anagrams', () {
    test('two empty strings are anagrams', () {
      expect(isAnagram('', ''), true);
    });
    test('a and a are anagrams', () {
      expect(isAnagram('a', 'a'), true);
    });
    test('a and b are not anagrams', () {
      expect(isAnagram('a', 'b'), false);
    });
    test('ab and ba are anagrams', () {
      expect(isAnagram('ab', 'ba'), true);
    });
    test('ab and ab are anagrams', () {
      expect(isAnagram('ab', 'ab'), true);
    });
    test('ab and abc are not anagrams', () {
      expect(isAnagram('ab', 'abc'), false);
    });
    test('abc and ab are not anagrams', () {
      expect(isAnagram('abc', 'ab'), false);
    });
    test('abc and bac are anagrams', () {
      expect(isAnagram('abc', 'bac'), true);
    });
    test('abc and bca are anagrams', () {
      expect(isAnagram('abc', 'bca'), true);
    });
    test('abc and cba are anagrams', () {
      expect(isAnagram('abc', 'cba'), true);
    });
    test('abc and cab are anagrams', () {
      expect(isAnagram('abc', 'cab'), true);
    });
    test('abc and acb are anagrams', () {
      expect(isAnagram('abc', 'acb'), true);
    });
    test('abc and cbaa are not anagrams', () {
      expect(isAnagram('abc', 'cbaa'), false);
    });
  });
}
