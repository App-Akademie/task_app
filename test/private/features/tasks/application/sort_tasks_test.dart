import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/private/features/tasks/application/sort_tasks.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/models/task_model.dart';

void main() {
  group('Test sort tasks', () {
    group('Test sort chapters', () {
      test(
          'given an empty list of tasks, when sortChapters is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        expect(sortChapters(tasks), []);
      });
      test(
          'given a list of tasks with one chapter, when sortChapters is called, then it returns a list with one chapter',
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
        expect(
            sortChapters(tasks),
            tasks.map((e) => e.copyWith(
                solution: null, taskModel: e.taskModel.stripDownToChapter())));
      });
      test(
          'given a sorted list of tasks with two chapters, when sortChapters is called, then it returns a list with two chapters',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(
            sortChapters(tasks),
            tasks.map((e) => e.copyWith(
                solution: null, taskModel: e.taskModel.stripDownToChapter())));
      });
      test(
          'given an unsorted list of tasks with two chapters, when sortChapters is called, then it returns a sorted list with two chapters',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(
            sortChapters(tasks),
            tasks
                .map((e) => e.copyWith(
                    solution: null,
                    taskModel: e.taskModel.stripDownToChapter()))
                .toList()
                .reversed
                .toList());
      });

      test(
          'given a sorted list of two tasks with two equal chapters, when sortChapters is called, then it returns a list with one chapters',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(sortChapters(tasks), [
          tasks.first.copyWith(
              solution: null,
              taskModel: tasks.first.taskModel.stripDownToChapter())
        ]);
      });
    });
    group('Test sort sub chapters', () {
      test(
          'given an empty list of tasks, when sortSubChapters is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        expect(sortSubChapters(tasks), []);
      });
      test(
          'given a list of tasks with one task of one subChapter, when sortSubChapters is called, then it returns a list with one task',
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
        expect(
            sortSubChapters(tasks),
            tasks.map((e) => e.copyWith(
                solution: null,
                taskModel: e.taskModel.stripDownToChapterAndSubChapter())));
      });
      test(
          'given a sorted list of tasks with two subchapters, when sortSubChapters is called, then it returns a list with two subchapters',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(
            sortSubChapters(tasks),
            tasks.map((e) => e.copyWith(
                solution: null,
                taskModel: e.taskModel.stripDownToChapterAndSubChapter())));
      });
      test(
          'given an unsorted list of tasks with two subchapters, when sortSubChapters is called, then it returns a sorted list with two subchapters',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(
            sortSubChapters(tasks),
            tasks
                .map((e) => e.copyWith(
                    solution: null,
                    taskModel: e.taskModel.stripDownToChapterAndSubChapter()))
                .toList()
                .reversed
                .toList());
      });
      test(
          'given a sorted list of two tasks with two equal subchapters, when sortSubChapters is called, then it returns a list with one subchapter',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(sortSubChapters(tasks), [
          tasks.first.copyWith(
              solution: null,
              taskModel:
                  tasks.first.taskModel.stripDownToChapterAndSubChapter())
        ]);
      });
    });
    group('Test sort lessons', () {
      test(
          'given an empty list of tasks, when sortLessons is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        expect(sortLessons(tasks), []);
      });
      test(
          'given a list of tasks with one task of one lesson, when sortLessons is called, then it returns a list with one task',
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
        expect(
            sortLessons(tasks),
            tasks.map((e) => e.copyWith(
                solution: null,
                taskModel:
                    e.taskModel.stripDownToChapterAndSubChapterAndLesson())));
      });
      test(
          'given a sorted list of tasks with two lessons, when sortLessons is called, then it returns a list with two lessons',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(
            sortLessons(tasks),
            tasks.map((e) => e.copyWith(
                solution: null,
                taskModel:
                    e.taskModel.stripDownToChapterAndSubChapterAndLesson())));
      });
      test(
          'given an unsorted list of tasks with two lessons, when sortLessons is called, then it returns a sorted list with two lessons',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(
            sortLessons(tasks),
            tasks
                .map((e) => e.copyWith(
                    solution: null,
                    taskModel:
                        e.taskModel.stripDownToChapterAndSubChapterAndLesson()))
                .toList()
                .reversed
                .toList());
      });
      test(
          'given a sorted list of two tasks with two equal lessons, when sortLessons is called, then it returns a list with one lesson',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(sortLessons(tasks), [
          tasks.first.copyWith(
              solution: null,
              taskModel: tasks.first.taskModel
                  .stripDownToChapterAndSubChapterAndLesson())
        ]);
      });
    });
    group('Test sort tasks', () {
      test(
          'given an empty list of tasks, when sortTasks is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        expect(sortTasks(tasks), []);
      });
      test(
          'given a list of tasks with one task of one chapter, when sortTasks is called, then it returns a list with one task',
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
        expect(sortTasks(tasks), tasks);
      });
      test(
          'given a sorted list of tasks with two taskNumbers, when sortTasks is called, then it returns a list with two taskNumbers',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(sortTasks(tasks), tasks);
      });
      test(
          'given an unsorted list of tasks with two taskNumbers, when sortTasks is called, then it returns a sorted list with two taskNumbers',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: ""))
        ];
        expect(sortTasks(tasks), tasks.reversed);
      });
      test(
          'given a list of tasks with different chapters, subchapters, lessons and taskNumbers when sortTasks is called, then it returns a sorted list with different chapters, subchapters, lessons taskNumbers',
          () {
        final tasks = [
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 3,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 2,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 2,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          const Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 2,
                  lesson: 2,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
        ];
        expect(sortTasks(tasks.reversed.toList()), tasks);
      });
    });
  });
}
