import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _themeDarkModeKey = 'themeDarkMode';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  /// Loads the User's preferred ThemeMode from local
  Future<ThemeMode> themeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isDarkMode = prefs.getBool(_themeDarkModeKey);
    switch (isDarkMode) {
      case true:
        return ThemeMode.dark;
      case false:
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (theme == ThemeMode.dark) {
      await prefs.setBool(_themeDarkModeKey, true);
    } else {
      await prefs.setBool(_themeDarkModeKey, false);
    }
  }
}
