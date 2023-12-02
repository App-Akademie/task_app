import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_sizes.dart';
import 'package:task_app/private/features/settings/settings_controller.dart';
import 'package:task_app/private/features/tasks/application/solved_function_arg.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/presentation/progress.dart';

class NavigationScreen extends StatelessWidget {
  static const routeName = '/NavigationScreen';

  final NavigationScreenType navigationScreenType;
  final String scaffoldTitle;
  final String progressTitle;
  final List<Task> tasks;

  /// a function that returns a list of tasks sorted by either chapters, subchapters, lessons or taskNumbers from a given list of [Task].
  ///
  /// the list of tasks returned are stripped down
  /// this means that the resulting list will have no solutions, empty task titles / texts,
  /// and depending on the [navigationScreenType] the taskNumber, lesson or subChapter will be set to 0.
  ///
  /// so for example if it is function that sorts by chapters, the subChapters etc. will be set to 0.
  /// this way it is easier to remove duplicates.
  final List<Task> Function(List<Task>) sortedStrippedTasksFunction;

  /// a function that returns [true] if all tasks of a given chapter, subchapter or lesson are solved.
  ///
  /// the first argument is a list of all tasks, the second argument is the chapter, subchapter or lesson
  /// (depending on the [navigationScreenType]) of the tasks that should be checked.
  final bool Function(List<Task>, int)? solvedFunction;
  final String Function(Task) tileTextFunction;
  final Widget Function(Task) routeWidgetFunction;
  final bool showAppBarIcon;
  final SettingsController settingsController;
  final bool showDarkModeSwitch;
  const NavigationScreen({
    Key? key,
    required this.navigationScreenType,
    required this.scaffoldTitle,
    required this.progressTitle,
    required this.tasks,
    required this.sortedStrippedTasksFunction,
    required this.solvedFunction,
    required this.tileTextFunction,
    required this.routeWidgetFunction,
    required this.settingsController,
    this.showDarkModeSwitch = false,
    this.showAppBarIcon = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: showAppBarIcon
            ? Image.asset('assets/images/icon_light_bg.jpg')
            : null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(scaffoldTitle),
            showDarkModeSwitch
                ? Switch(
                    value: settingsController.themeMode == ThemeMode.dark ||
                        (settingsController.themeMode == ThemeMode.system &&
                            MediaQuery.of(context).platformBrightness ==
                                Brightness.dark),
                    onChanged: (v) {
                      settingsController.updateThemeMode(
                          v ? ThemeMode.dark : ThemeMode.light);
                    })
                : const SizedBox(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p8),
          child: Column(
            children: [
              Progress(
                tasks: tasks,
                progressTitle: progressTitle,
              ),
              gapH16,
              const Divider(),
              gapH16,
              for (final task in sortedStrippedTasksFunction(tasks))
                ListTile(
                  leading: (solvedFunction == null
                          ? task.solved
                          : solvedFunction!(
                              tasks,
                              getSolvedFunctionArgument(
                                  task, navigationScreenType)))
                      ? Icon(Icons.check,
                          color: Theme.of(context).colorScheme.primary)
                      : const Icon(null),
                  title: Text(tileTextFunction(task)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => routeWidgetFunction(task),
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
