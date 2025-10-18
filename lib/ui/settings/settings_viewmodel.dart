import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/app_config_repository.dart';

class SettingsViewModel extends ChangeNotifier {
  SettingsViewModel(this._appConfigRepository);

  final AppConfigRepository _appConfigRepository;

  bool _isDarkMode = false;

  /// If true show dark mode
  bool get isDarkMode => _isDarkMode;

  /// Load the current theme setting from the repository
  void load() async {
    final result = await _appConfigRepository.isDarkMode();
    _isDarkMode = result;
    notifyListeners();
  }

  /// Toggle the theme setting
  Future<bool> toggle() async {
    _isDarkMode = !_isDarkMode;
    await _appConfigRepository.setDarkMode(_isDarkMode);
    notifyListeners();
    return _isDarkMode;
  }
}
