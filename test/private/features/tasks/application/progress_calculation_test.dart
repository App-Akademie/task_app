import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/private/features/tasks/application/progress_calculation.dart';

void main() {
  group('Test progress calcuation', () {
    test('given a totalTasks of 0, then it returns 0', () {
      const solvedTasks = 0;
      const totalTasks = 0;
      expect(progressPercentage(solvedTasks, totalTasks), 0);
    });
    test('given a totalTask that equals solvedTasks (not 0), then it returns 1',
        () {
      const solvedTasks = 1;
      const totalTasks = 1;
      expect(progressPercentage(solvedTasks, totalTasks), 1);
    });
    test('given a solvedTasks that is 0, then it returns 0', () {
      const solvedTasks = 0;
      const totalTasks = 1;
      expect(progressPercentage(solvedTasks, totalTasks), 0);
    });
    test('given a solvedTask that is half of totalTasks, then it returns 0.5',
        () {
      const solvedTasks = 1;
      const totalTasks = 2;
      expect(progressPercentage(solvedTasks, totalTasks), 0.5);
    });
  });
}
