import 'package:task_app/private/features/settings/settings_controller.dart';
import 'package:task_app/private/features/tasks/application/filter_tasks.dart';
import 'package:task_app/private/features/tasks/application/solved_function_arg.dart';
import 'package:task_app/private/features/tasks/application/solved_tasks.dart';
import 'package:task_app/private/features/tasks/application/sort_tasks.dart';
import 'package:task_app/private/features/tasks/data/tasks.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/presentation/task_screen.dart';
import 'package:task_app/private/features/tasks/presentation/navigation_screens/navigation_screen.dart';

NavigationScreen getOverviewScreen({required SettingsController controller}) =>
    NavigationScreen(
      navigationScreenType: NavigationScreenType.chapters,
      scaffoldTitle: "Übersicht",
      progressTitle: "Gesamtfortschritt",
      tasks: globalTaskList,
      sortedStrippedTasksFunction: sortChapters,
      solvedFunction: isChapterSolved,
      tileTextFunction: (Task task) =>
          "Kapitel ${task.chapter}: ${task.taskModel.chapterTitle}",
      routeWidgetFunction: (Task task) =>
          _chaptersScreen(task: task, controller: controller),
      showAppBarIcon: true,
      settingsController: controller,
      showDarkModeSwitch: true,
    );
NavigationScreen _chaptersScreen(
        {required Task task, required SettingsController controller}) =>
    NavigationScreen(
      navigationScreenType: NavigationScreenType.subChapters,
      scaffoldTitle: 'Kapitel ${task.chapter}: ${task.taskModel.chapterTitle}',
      progressTitle: "Kapitel Fortschritt",
      tasks: filterChapters(globalTaskList, task.chapter),
      sortedStrippedTasksFunction: sortSubChapters,
      solvedFunction: isSubChapterSolved,
      tileTextFunction: (Task task) =>
          "Unterkapitel ${task.taskModel.fullSubChapterNumberString}: ${task.taskModel.subChapterTitle}",
      routeWidgetFunction: (Task task) =>
          _subChaptersScreen(task: task, controller: controller),
      settingsController: controller,
    );
NavigationScreen _subChaptersScreen(
        {required Task task, required SettingsController controller}) =>
    NavigationScreen(
      navigationScreenType: NavigationScreenType.lessons,
      scaffoldTitle:
          'Unterkapitel ${task.taskModel.fullSubChapterNumberString}: ${task.taskModel.subChapterTitle}',
      progressTitle: "Unterkapitel Fortschritt",
      tasks: filterSubChapters(globalTaskList, task.chapter, task.subChapter),
      sortedStrippedTasksFunction: sortLessons,
      solvedFunction: isLessonSolved,
      tileTextFunction: (Task task) =>
          "Lektion ${task.taskModel.fullLectionNumberString}: ${task.taskModel.lessonTitle}",
      routeWidgetFunction: (Task task) =>
          _lessonsScreen(task: task, controller: controller),
      settingsController: controller,
    );

NavigationScreen _lessonsScreen(
        {required Task task, required SettingsController controller}) =>
    NavigationScreen(
      navigationScreenType: NavigationScreenType.tasks,
      scaffoldTitle:
          'Lektion ${task.taskModel.fullLectionNumberString}: ${task.taskModel.lessonTitle}',
      progressTitle: "Lektion Fortschritt",
      tasks: filterLessons(
          globalTaskList, task.chapter, task.subChapter, task.lesson),
      sortedStrippedTasksFunction: sortTasks,
      solvedFunction: null,
      tileTextFunction: (Task task) =>
          "Aufgabe ${task.taskModel.fullTaskNumberString}: ${task.taskModel.taskTitel}",
      routeWidgetFunction: (Task task) => TaskScreen(
        task: task,
      ),
      settingsController: controller,
    );
