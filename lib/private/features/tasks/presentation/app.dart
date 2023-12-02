import 'package:flutter/material.dart';
import 'package:task_app/private/config/theme.dart';
import 'package:task_app/private/features/settings/settings_controller.dart';
import 'package:task_app/private/features/tasks/presentation/navigation_screens/navigation_screens.dart';

class App extends StatelessWidget {
  const App({super.key, required this.settingsController});
  final SettingsController settingsController;
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: getOverviewScreen(controller: settingsController),
          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: themeData(isDarkTheme: false, context: context),
          darkTheme: themeData(isDarkTheme: true, context: context),
          themeMode: settingsController.themeMode,
        );
      },
      listenable: settingsController,
    );
  }
}
