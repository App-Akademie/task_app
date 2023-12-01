import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('palindromes', () {
    test('empty string is a palindrome', () {
      expect(isPalindrome(''), true);
    });
    test('a is a palindrome', () {
      expect(isPalindrome('a'), true);
    });
    test('ab is not a palindrome', () {
      expect(isPalindrome('ab'), false);
    });
    test('aba is a palindrome', () {
      expect(isPalindrome('aba'), true);
    });
    test('abba is a palindrome', () {
      expect(isPalindrome('abba'), true);
    });
    test('abbaa is not a palindrome', () {
      expect(isPalindrome('abbaa'), false);
    });
    test('abbaabba is a palindrome', () {
      expect(isPalindrome('abbaabba'), true);
    });

    ///lower upper case
    test('Abba is a palindrome', () {
      expect(isPalindrome('Abba'), true);
    });
    test('Abbaa is not a palindrome', () {
      expect(isPalindrome('Abbaa'), false);
    });
    test('AbbaAbba is a palindrome', () {
      expect(isPalindrome('AbbaAbba'), true);
    });
  });
}
