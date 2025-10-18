import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'app_config_repository.dart';

/// Репозиторій для зберігання налаштувань програми.
/// Налаштування зберігаються з використанням бібліотеки shared_preferences.
///
/// Також взаємодія з SharedPreferences може бути винесена в окремий сервіс,
/// якщо SharedPreferences використовується багатьма репозиторіями.
class AppConfigRepositoryStore extends AppConfigRepository {

  final _darkModeController = StreamController<bool>.broadcast();

  @override
  Future setDarkMode(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', isDark);
    _darkModeController.add(isDark);
  }

  @override
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
  @override
  Stream<bool> observeDarkMode() => _darkModeController.stream;
}
