import 'dart:async';

import 'package:twip_app/data/repositories/appconfig/app_config_repository.dart';

class FakeAppConfigRepository extends AppConfigRepository {

  final _darkModeController = StreamController<bool>.broadcast();

  bool _isDark = false;

  @override
  Future setDarkMode(bool isDark) async {
    _darkModeController.add(isDark);
    _isDark = isDark;
  }

  @override
  Future<bool> isDarkMode() async {
    return _isDark;
  }

  /// Stream that emits theme config changes.
  /// ViewModels should call [isDarkMode] to get the current theme setting.
  @override
  Stream<bool> observeDarkMode() => _darkModeController.stream;
}