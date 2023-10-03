import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/private/features/tasks/application/solved_tasks.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/models/task_model.dart';

void main() {
  group('Test solved tasks', () {
    group('Test numberOfSolvedTasks', () {
      test(
          'given an empty list of tasks, when numberOfSolvedTasks is called, then it returns 0',
          () {
        const tasks = <Task>[];
        expect(numberOfSolvedTasks(tasks), 0);
      });
      test(
          'given a list of tasks with no solved tasks, when numberOfSolvedTasks is called, then it returns 0',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(numberOfSolvedTasks(tasks), 0);
      });
      test(
          'given a list of tasks with one solved task, when numberOfSolvedTasks is called, then it returns 1',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
        ];
        expect(numberOfSolvedTasks(tasks), 1);
      });
    });
    group('Test isChapterSolved', () {
      test(
          'given an empty list of tasks, when isChapterSolved is called, then it returns false',
          () {
        const tasks = <Task>[];
        const chapter = 1;
        expect(isChapterSolved(tasks, chapter), false);
      });
      test(
          'given a list of tasks with no solved tasks, when isChapterSolved is called, then it returns false',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        const chapter = 1;
        expect(isChapterSolved(tasks, chapter), false);
      });
      test(
          'given a list of 2 tasks of the same chapter with one solved and one not solved, then it returns false',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        expect(isChapterSolved(tasks, chapter), false);
      });
      test(
          'given a list of 2 tasks of the same chapter with both solved, then it returns true',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
        ];
        const chapter = 1;
        expect(isChapterSolved(tasks, chapter), true);
      });
      test(
          'given a list of 1 solved task from another chapter, then it returns false',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
        ];
        const chapter = 2;
        expect(isChapterSolved(tasks, chapter), false);
      });
    });
    group('Test isSubChapterSolved', () {
      test(
          'given an empty list of tasks, when isSubChapterSolved is called, then it returns false',
          () {
        const tasks = <Task>[];
        const subChapter = 1;
        expect(isSubChapterSolved(tasks, subChapter), false);
      });
      test(
          'given a list of tasks with no solved tasks, when isSubChapterSolved is called, then it returns false',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        const subChapter = 1;
        expect(isSubChapterSolved(tasks, subChapter), false);
      });
      test(
          'given a list of 2 tasks of the same subChapter with one solved and one not solved, then it returns false',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
        ];
        const subChapter = 1;
        expect(isSubChapterSolved(tasks, subChapter), false);
      });
      test(
          'given a list of 2 tasks of the same subChapter with both solved, then it returns true',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const subChapter = 1;
        expect(isSubChapterSolved(tasks, subChapter), true);
      });
      test(
          'given a list of 1 solved task from another subChapter, then it returns false',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
        ];
        const subChapter = 2;
        expect(isSubChapterSolved(tasks, subChapter), false);
      });
    });

    group('Test isLessonSolved', () {
      test(
          'given an empty list of tasks, when isLessonSolved is called, then it returns false',
          () {
        const tasks = <Task>[];
        const lesson = 1;
        expect(isLessonSolved(tasks, lesson), false);
      });
      test(
          'given a list of tasks with no solved tasks, when isLessonSolved is called, then it returns false',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        const lesson = 1;
        expect(isLessonSolved(tasks, lesson), false);
      });
      test(
          'given a list of 2 tasks of the same lesson with one solved and one not solved, then it returns false',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
        ];
        const lesson = 1;
        expect(isLessonSolved(tasks, lesson), false);
      });
      test(
          'given a list of 2 tasks of the same lesson with both solved, then it returns true',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const lesson = 1;
        expect(isLessonSolved(tasks, lesson), true);
      });
      test(
          'given a list of 1 solved task from another lesson, then it returns false',
          () {
        final tasks = [
          Task(
              taskModel: const TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""),
              solution: Container()),
        ];
        const lesson = 2;
        expect(isLessonSolved(tasks, lesson), false);
      });
    });
  });
}
