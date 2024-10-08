import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('Prime check', () {
    test('0 is not a prime number', () {
      expect(isPrime(0), false);
    });
    test('1 is not a prime number', () {
      expect(isPrime(1), false);
    });
    test('2 is a prime number', () {
      expect(isPrime(2), true);
    });
    test('3 is a prime number', () {
      expect(isPrime(3), true);
    });
    test('4 is not a prime number', () {
      expect(isPrime(4), false);
    });
    test('5 is a prime number', () {
      expect(isPrime(5), true);
    });
    test('129 is not a prime number', () {
      expect(isPrime(129), false);
    });
    test('131 is a prime number', () {
      expect(isPrime(131), true);
    });
  });
}
