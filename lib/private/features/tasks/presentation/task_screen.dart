import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_sizes.dart';
import 'package:task_app/private/config/app_theme.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/presentation/unsolved_task.dart';
import 'package:task_app/private/features/text_parsing/presentation/task_text.dart';

class TaskScreen extends StatelessWidget {
  final Task task;

  const TaskScreen({Key? key, required this.task}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 96,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.start,
              "Kapitel ${task.chapter}: ${task.taskModel.lessonTitle}",
              style: context.textTheme.titleMedium,
            ),
            gapH4,
            Text(
                "Aufgabe ${task.taskModel.fullTaskNumberString}: ${task.taskModel.taskTitel}",
                style: context.textTheme.headlineSmall),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Center(
            child: Column(
              children: [
                const TaskTitle(text: "Aufgabe"),
                gapH16,
                TaskText(text: task.taskModel.taskText),
                if (task.taskModel.taskImagePath != null) ...[
                  gapH16,
                  Image.asset(task.taskModel.taskImagePath!),
                ],
                gapH32,
                const TaskTitle(text: "Lösung"),
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

class TaskTitle extends StatelessWidget {
  const TaskTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: context.colors.onSurface,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p16,
              vertical: Sizes.p4,
            ),
            child: Text(text,
                style: context.textTheme.titleLarge!.copyWith(
                  color: context.colors.surface,
                )),
          ),
        ),
      ],
    );
  }
}
