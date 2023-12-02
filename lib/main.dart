import 'package:flutter/material.dart';
import 'package:task_app/private/features/tasks/presentation/app.dart';

import 'private/features/settings/settings_controller.dart';
import 'private/features/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();
  runApp(App(settingsController: settingsController));
}
