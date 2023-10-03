import 'package:task_app/private/features/tasks/models/task.dart';

/// Returns the total number of solved tasks of a given list of [Task].
int numberOfSolvedTasks(List<Task> tasks) {
  if (tasks.isEmpty) return 0;
  return tasks
      .map((task) => task.solution == null ? 0 : 1)
      .reduce((value, element) => value + element);
}

/// Returns [true] if all tasks of a given chapter are solved.
bool isChapterSolved(List<Task> tasks, int chapter) {
  final chapterTasks = tasks.where((task) => task.chapter == chapter);
  if (chapterTasks.isEmpty) return false;
  return chapterTasks.every((task) => task.solved);
}

/// Returns [true] if all tasks of a given subchapter are solved.
///
/// this function does not distinguish between chapters,
/// so only pass tasks of one chapter to this function.
bool isSubChapterSolved(List<Task> tasks, int subChapter) {
  assert(tasks.every((task) => task.chapter == tasks.first.chapter));
  final subChapterTasks = tasks.where((task) => task.subChapter == subChapter);
  if (subChapterTasks.isEmpty) return false;
  return subChapterTasks.every((task) => task.solved);
}

/// Returns [true] if all tasks of a given lesson are solved.
///
/// this function does not distinguish between chapters or subchapters,
/// so only pass tasks of one subChapter to this function.
bool isLessonSolved(List<Task> tasks, int lesson) {
  assert(tasks.every((task) => task.subChapter == tasks.first.subChapter));
  final lessonTasks = tasks.where((task) => task.lesson == lesson);
  if (lessonTasks.isEmpty) return false;
  return lessonTasks.every((task) => task.solved);
}
