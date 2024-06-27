import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_sizes.dart';
import 'package:task_app/private/config/values.dart';
import 'package:task_app/private/features/tasks/application/progress_calculation.dart';
import 'package:task_app/private/features/tasks/application/solved_tasks.dart';
import 'package:task_app/private/features/tasks/models/task.dart';

class Progress extends StatelessWidget {
  final List<Task> tasks;
  final String progressTitle;
  const Progress({
    super.key,
    required this.tasks,
    required this.progressTitle,
  });
  @override
  Widget build(BuildContext context) {
    final solvedTasksCount = numberOfSolvedTasks(tasks);
    final progress = progressPercentage(solvedTasksCount, tasks.length);
    return Column(
      children: [
        Text(
            "$progressTitle: ${(progress * 100).toStringAsFixed(decimalPlaces)}%",
            style: Theme.of(context).textTheme.titleMedium),
        gapH8,
        TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
          tween: Tween<double>(
            begin: 0,
            end: progress,
          ),
          builder: (context, value, _) => LinearProgressIndicator(
            value: value,
            minHeight: Sizes.p32,
          ),
        ),
      ],
    );
  }
}
