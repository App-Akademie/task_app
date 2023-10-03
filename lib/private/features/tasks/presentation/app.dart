import 'package:flutter/material.dart';
import 'package:task_app/private/config/theme.dart';
import 'package:task_app/private/features/tasks/presentation/navigation_screens/navigation_screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(isDarkTheme: false, context: context),
      darkTheme: themeData(isDarkTheme: true, context: context),
      themeMode: ThemeMode.light,
      home: overviewScreen,
    );
  }
}
