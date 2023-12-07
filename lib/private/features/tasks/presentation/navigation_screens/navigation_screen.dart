import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:task_app/private/config/app_sizes.dart';
import 'package:task_app/private/features/settings/data/settings_controller.dart';
import 'package:task_app/private/features/settings/presentation/dark_mode_switch.dart';
import 'package:task_app/private/features/tasks/application/solved_function_arg.dart';
import 'package:task_app/private/features/tasks/models/task.dart';
import 'package:task_app/private/features/tasks/presentation/progress.dart';

class NavigationScreen extends StatefulWidget {
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
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  StateMachineController? controller;
  SMIInput<bool>? switchInput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: widget.showAppBarIcon
            ? Padding(
                padding: const EdgeInsets.all(Sizes.p16),
                child: Image.asset(widget.settingsController.darkModeSet
                    ? 'assets/images/logo_w.png'
                    : 'assets/images/logo_b.png'),
              )
            : null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(widget.scaffoldTitle)),
            widget.showDarkModeSwitch
                ? Flexible(
                    child: DarkModeSwitch(
                        settingsController: widget.settingsController))
                : const SizedBox.shrink(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p8),
          child: Column(
            children: [
              Progress(
                tasks: widget.tasks,
                progressTitle: widget.progressTitle,
              ),
              gapH16,
              const Divider(),
              gapH16,
              for (final task
                  in widget.sortedStrippedTasksFunction(widget.tasks))
                ListTile(
                  leading: (widget.solvedFunction == null
                          ? task.solved
                          : widget.solvedFunction!(
                              widget.tasks,
                              getSolvedFunctionArgument(
                                  task, widget.navigationScreenType)))
                      ? Icon(Icons.check,
                          color: Theme.of(context).colorScheme.primary)
                      : const Icon(null),
                  title: Text(widget.tileTextFunction(task)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => widget.routeWidgetFunction(task),
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
