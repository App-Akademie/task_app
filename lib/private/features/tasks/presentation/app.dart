import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_theme.dart';
import 'package:task_app/private/features/settings/data/settings_controller.dart';
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
          darkTheme: AppTheme.darkTheme,
          theme: AppTheme.lightTheme,
          themeMode: settingsController.themeMode,
          debugShowCheckedModeBanner: false,
        );
      },
      listenable: settingsController,
    );
  }
}
