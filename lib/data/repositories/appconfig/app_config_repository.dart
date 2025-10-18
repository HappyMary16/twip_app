import 'dart:async';

/// Репозиторій для зберігання налаштувань програми.
abstract class AppConfigRepository {
  Future setDarkMode(bool isDark);

  Future<bool> isDarkMode();

  /// Stream that emits theme config changes.
  /// ViewModels should call [isDarkMode] to get the current theme setting.
  Stream<bool> observeDarkMode();
}
