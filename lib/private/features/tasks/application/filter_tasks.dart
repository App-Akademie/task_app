import 'package:task_app/private/features/tasks/models/task.dart';

/// Returns only the tasks of a given [chapter] from a given list of [Task].
List<Task> filterChapters(List<Task> tasks, int chapter) {
  return tasks.where((task) => task.chapter == chapter).toList();
}

/// Returns only the tasks of a given [chapter] and [subChapter] from a given list of [Task].
List<Task> filterSubChapters(List<Task> tasks, int chapter, int subChapter) {
  return filterChapters(tasks, chapter).where((task) {
    return task.subChapter == subChapter;
  }).toList();
}

/// Returns only the tasks of a given [chapter], [subChapter] and [lesson] from a given list of [Task].
List<Task> filterLessons(
    List<Task> tasks, int chapter, int subChapter, int lesson) {
  return filterSubChapters(tasks, chapter, subChapter).where((task) {
    return task.lesson == lesson;
  }).toList();
}
