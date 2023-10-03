import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/private/features/tasks/application/filter_tasks.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/models/task_model.dart';

void main() {
  group('Test filters', () {
    group('Test filterChapters', () {
      test(
          'given a list of tasks, when filterChapters is called, then it returns only the tasks of a given chapter',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        expect(filterChapters(tasks, chapter), [tasks[0]]);
      });
      test(
          'given an empty list of tasks, when filterChapters is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        const chapter = 1;
        expect(filterChapters(tasks, chapter), []);
      });
      test(
          'given a list of tasks and a chapter that does not exist, when filterChapters is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 0;
        expect(filterChapters(tasks, chapter), []);
      });
    });

    group('Test filterSubChapters', () {
      test(
          'given a list of tasks, when filterSubChapters is called, then it returns only the tasks of a given chapter and subChapter',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 1;
        expect(filterSubChapters(tasks, chapter, subChapter), [tasks[0]]);
      });

      test(
          'given an empty list of tasks, when filterSubChapters is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        const chapter = 1;
        const subChapter = 1;
        expect(filterSubChapters(tasks, chapter, subChapter), []);
      });

      test(
          'given a list of tasks and a chapter that does not exist, when filterSubChapters is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 0;
        const subChapter = 1;
        expect(filterSubChapters(tasks, chapter, subChapter), []);
      });

      test(
          'given a list of tasks and a subChapter that does not exist, when filterSubChapters is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 0;
        expect(filterSubChapters(tasks, chapter, subChapter), []);
      });

      test(
          'given a list of tasks, a chapter that does not exist and a subChapter that does not exist, when filterSubChapters is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 0;
        const subChapter = 0;
        expect(filterSubChapters(tasks, chapter, subChapter), []);
      });
      test(
          'given a list of tasks, a chapter that does exist and a subChapter that does not exist, when filterSubChapters is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 0;
        expect(filterSubChapters(tasks, chapter, subChapter), []);
      });
    });

    group('Test filterLessons', () {
      test(
          'given a list of tasks, a chapter that does exist, a subChapter that does exist and a lesson that does exist, when filterLessons is called, then it returns only the tasks of a given chapter, subChapter and lesson',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 1;
        const lesson = 1;
        expect(filterLessons(tasks, chapter, subChapter, lesson), [tasks[0]]);
      });
      test(
          'given a list of tasks with two tasks of the same lesson and some others, when filterLessons is called, then it returns only the tasks of a given chapter, subChapter and lesson',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 2,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 1;
        const lesson = 1;
        expect(filterLessons(tasks, chapter, subChapter, lesson),
            [tasks[0], tasks[1]]);
      });

      test(
          'given an empty list of tasks, when filterLessons is called, then it returns an empty list',
          () {
        const tasks = <Task>[];
        const chapter = 1;
        const subChapter = 1;
        const lesson = 1;
        expect(filterLessons(tasks, chapter, subChapter, lesson), []);
      });
      test(
          'given a list of tasks, a chapter that does not exist, a subChapter that does exist and a lesson that does exist, when filterLessons is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 0;
        const subChapter = 1;
        const lesson = 1;
        expect(filterLessons(tasks, chapter, subChapter, lesson), []);
      });
      test(
          'given a list of tasks, a chapter that does exist, a subChapter that does not exist and a lesson that does exist, when filterLessons is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 0;
        const lesson = 1;
        expect(filterLessons(tasks, chapter, subChapter, lesson), []);
      });
      test(
          'given a list of tasks, a chapter that does exist, a subChapter that does exist and a lesson that does not exist, when filterLessons is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 1;
        const subChapter = 1;
        const lesson = 0;
        expect(filterLessons(tasks, chapter, subChapter, lesson), []);
      });
      test(
          'given a list of tasks, a chapter that does not exist, a subChapter that does not exist and a lesson that does not exist, when filterLessons is called, then it returns an empty list',
          () {
        const tasks = [
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 1,
                  lesson: 2,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 1,
                  subChapter: 2,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
          Task(
              taskModel: TaskModel(
                  chapter: 2,
                  subChapter: 1,
                  lesson: 1,
                  taskNumber: 1,
                  taskTitel: "",
                  taskText: "")),
        ];
        const chapter = 0;
        const subChapter = 0;
        const lesson = 0;
        expect(filterLessons(tasks, chapter, subChapter, lesson), []);
      });
    });
  });
}
