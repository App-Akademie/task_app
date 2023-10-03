import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/private/features/tasks/models/task_model.dart';
part 'task.freezed.dart';

@freezed
abstract class Task with _$Task implements Comparable<Task> {
  const factory Task({
    required TaskModel taskModel,
    Widget? solution,
  }) = _Task;
  const Task._();
  bool get solved => solution != null;
  int get chapter => taskModel.chapter;
  int get subChapter => taskModel.subChapter;
  int get lesson => taskModel.lesson;
  int get taskNumber => taskModel.taskNumber;

  @override
  int compareTo(Task other) {
    if (chapter != other.chapter) {
      return chapter.compareTo(other.chapter);
    } else if (subChapter != other.subChapter) {
      return subChapter.compareTo(other.subChapter);
    } else if (lesson != other.lesson) {
      return lesson.compareTo(other.lesson);
    } else {
      return taskNumber.compareTo(other.taskNumber);
    }
  }
}
