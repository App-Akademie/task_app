import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_sizes.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/presentation/unsolved_task.dart';

class TaskScreen extends StatelessWidget {
  final Task task;
  static const routeName = '/TaskScreen';

  const TaskScreen({Key? key, required this.task}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Aufgabe ${task.taskModel.fullTaskNumberString}: ${task.taskModel.taskTitel}"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Center(
            child: Column(
              children: [
                Text("Aufgabe:", style: Theme.of(context).textTheme.titleLarge),
                gapH16,
                Text(task.taskModel.taskText,
                    style: Theme.of(context).textTheme.titleMedium),
                if (task.taskModel.taskImagePath != null) ...[
                  gapH16,
                  Image.asset(task.taskModel.taskImagePath!),
                ],
                gapH32,
                Text("Lösung:", style: Theme.of(context).textTheme.titleLarge),
                gapH16,
                task.solution ?? const UnsolvedTask(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
