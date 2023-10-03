import 'package:task_app/private/features/tasks/models/task.dart';

/// Returns a list of tasks sorted by chapters from a given list of [Task].
///
/// the list of tasks returned are stripped down to chapter
/// (the resulting list will have no solutions and empty task titles / texts.)
/// and then duplicates are removed.
///
/// Example (pseudo code):
///
///   Input: [Task(chapter: 1, subChapter: 1, lesson: 1, taskNumber: 1), Task(chapter: 1, subChapter: 1, lesson: 1, taskNumber: 2), Task(chapter: 2, subChapter: 1, lesson: 1, taskNumber: 1)]
///   Output: [Task(chapter: 1), Task(chapter: 2)]
///
List<Task> sortChapters(List<Task> tasks) {
  //strip down tasks to chapter and subchapter
  //then remove duplicates
  return tasks
      .map((e) => e.copyWith(
          solution: null, taskModel: e.taskModel.stripDownToChapter()))
      .toSet()
      .toList()
    ..sort();
}

/// Returns a list of tasks sorted by subchapters from a given list of [Task] of the same chapter.
///
/// the list of tasks returned are stripped down to chapter and subchapter
/// (the resulting list will have no solutions and empty task titles / texts.)
/// and duplicates are removed.
///
/// this function does not distinguish between chapters,
/// so only pass tasks of one chapter to this function.
List<Task> sortSubChapters(List<Task> tasks) {
  assert(
    //all tasks must have the same chapter
    tasks.every((t) => tasks.first.chapter == t.chapter),
  );
  //strip down tasks to chapter and subchapter
  //then remove duplicates
  return tasks
      .map((e) => e.copyWith(
          solution: null,
          taskModel: e.taskModel.stripDownToChapterAndSubChapter()))
      .toSet()
      .toList()
    ..sort();
}

/// Returns a list of tasks sorted by lessons from a given list of [Task] of the same chapter.
///
/// the list of tasks returned are stripped down to chapter and subchapter and lesson
/// (the resulting list will have no solutions and empty task titles / texts.)
/// and duplicates are removed.
///
/// this function does not distinguish between chapters and subchapters,
/// so only pass tasks of one chapter and subChapter to this function.
List<Task> sortLessons(List<Task> tasks) {
  assert(
    //all tasks must have the same chapter and subchapter
    tasks.every((t) => tasks.first.chapter == t.chapter),
    tasks.every((t) => tasks.first.subChapter == t.subChapter),
  );
  //strip down tasks to chapter and subchapter and lesson
  //then remove duplicates
  return tasks
      .map((e) => e.copyWith(
          solution: null,
          taskModel: e.taskModel.stripDownToChapterAndSubChapterAndLesson()))
      .toSet()
      .toList()
    ..sort();
}

/// Returns a sorted list of Tasks from a given list of [Task].
///
/// priorities in order:
/// 1. chapter (int) (asc)
/// 2. subchapter (int) (asc)
/// 3. lesson (int) (asc)
List<Task> sortTasks(List<Task> tasks) {
  return [...tasks]..sort();
}
