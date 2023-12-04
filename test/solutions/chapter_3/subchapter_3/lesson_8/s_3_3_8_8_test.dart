import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  group("MultiplyAdvanced tests", () {
    test("Two numbers greater 0 should return the correct result", () {
      expect(multiplyAdvanced(2, 3), 6);
      expect(multiplyAdvanced(5, 5), 25);
      expect(multiplyAdvanced(10, 10), 100);
    });
    test("Two numbers smaller 0 should return the correct result", () {
      expect(multiplyAdvanced(-2, -3), 6);
      expect(multiplyAdvanced(-5, -5), 25);
      expect(multiplyAdvanced(-10, -10), 100);
    });
    test(
        "One number greater 0 and one smaller 0 should return the correct result",
        () {
      expect(multiplyAdvanced(-2, 3), -6);
      expect(multiplyAdvanced(5, -5), -25);
      expect(multiplyAdvanced(-10, 10), -100);
    });
    test("One number is 0 should return 0", () {
      expect(multiplyAdvanced(0, 3), 0);
      expect(multiplyAdvanced(5, 0), 0);
      expect(multiplyAdvanced(0, 10), 0);
    });
  });
}
