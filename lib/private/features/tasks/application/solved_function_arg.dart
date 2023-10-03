import 'package:task_app/private/features/tasks/models/task.dart';

enum NavigationScreenType { chapters, subChapters, lessons, tasks }

/// depending on the [navigationScreenType] returns the argument for the solved function
///
/// this argument is the number of the chapter, subchapter, lesson or taskNumber of the [task]
int getSolvedFunctionArgument(
    Task task, NavigationScreenType navigationScreenType) {
  switch (navigationScreenType) {
    case NavigationScreenType.chapters:
      return task.chapter;
    case NavigationScreenType.subChapters:
      return task.subChapter;
    case NavigationScreenType.lessons:
      return task.lesson;
    case NavigationScreenType.tasks:
      return task.taskNumber;
  }
}
