import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

// Репозиторій для зберігання налаштувань програми.
// Налаштування зберігаються з використанням бібліотеки shared_preferences.
class AppConfigRepository {

  final _darkModeController = StreamController<bool>.broadcast();

  void setDarkMode(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', isDark);
    _darkModeController.add(isDark);
  }

  Future<bool> isDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool('isDark');
    if (isDark == null || !isDark) {
      return false;
    }

    return true;
  }

  /// Stream that emits theme config changes.
  /// ViewModels should call [isDarkMode] to get the current theme setting.
  Stream<bool> observeDarkMode() => _darkModeController.stream;
}
