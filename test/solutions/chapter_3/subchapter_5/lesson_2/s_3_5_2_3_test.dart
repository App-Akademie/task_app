import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group('Seconds formatter', () {
    test('0 seconds are 0 hours, 0 minutes and 0 seconds', () {
      final formattedTime = formatSeconds(0);
      expect(formattedTime.hours, 0);
      expect(formattedTime.minutes, 0);
      expect(formattedTime.seconds, 0);
    });
    test('1 second is 0 hours, 0 minutes and 1 second', () {
      final formattedTime = formatSeconds(1);
      expect(formattedTime.hours, 0);
      expect(formattedTime.minutes, 0);
      expect(formattedTime.seconds, 1);
    });
    test('60 seconds are 0 hours, 1 minute and 0 second', () {
      final formattedTime = formatSeconds(60);
      expect(formattedTime.hours, 0);
      expect(formattedTime.minutes, 1);
      expect(formattedTime.seconds, 0);
    });
    test('61 seconds are 0 hours, 1 minute and 1 second', () {
      final formattedTime = formatSeconds(61);
      expect(formattedTime.hours, 0);
      expect(formattedTime.minutes, 1);
      expect(formattedTime.seconds, 1);
    });

    test('3600 seconds are 1 hour', () {
      final formattedTime = formatSeconds(3600);
      expect(formattedTime.hours, 1);
      expect(formattedTime.minutes, 0);
      expect(formattedTime.seconds, 0);
    });
    test('3660 seconds are 1 hour, 1 minute and 0 second', () {
      final formattedTime = formatSeconds(3660);
      expect(formattedTime.hours, 1);
      expect(formattedTime.minutes, 1);
      expect(formattedTime.seconds, 0);
    });
    test('3601 seconds are 1 hour, 0 minute and 1 second', () {
      final formattedTime = formatSeconds(3601);
      expect(formattedTime.hours, 1);
      expect(formattedTime.minutes, 0);
      expect(formattedTime.seconds, 1);
    });
    test('3661 seconds are 1 hour, 1 minute and 1 second', () {
      final formattedTime = formatSeconds(3661);
      expect(formattedTime.hours, 1);
      expect(formattedTime.minutes, 1);
      expect(formattedTime.seconds, 1);
    });
  });
}
