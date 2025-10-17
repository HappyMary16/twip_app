import 'dart:async';

import 'package:flutter/foundation.dart';

import 'data/repositories/app_config_repository.dart';

class MainAppViewModel extends ChangeNotifier {
  MainAppViewModel(this._appConfigRepository) {
    _subscription = _appConfigRepository.observeDarkMode().listen((isDarkMode) {
      _isDarkMode = isDarkMode;
      notifyListeners();
    });
    _load();
  }

  final AppConfigRepository _appConfigRepository;
  StreamSubscription<bool>? _subscription;

  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  Future<void> _load() async {
    final result = await _appConfigRepository.isDarkMode();
    _isDarkMode = result;
    notifyListeners();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}