import 'package:flutter/foundation.dart';
import 'package:twip_app/domain/models/path/path.dart';

import '../../../data/repositories/path_repository.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required this.routeRepository}) {
    _load();
  }

  final PathRepository routeRepository;

  final List<Path> _routes = [];

  List<Path> get routes => _routes;

  void _load() {
    try {
      _routes.addAll(routeRepository.routes);
    } finally {
      notifyListeners();
    }
  }

  void deleteRoute(int id) {
    routeRepository.deleteRoute(id);

    // Завантажуємо оновлений список маршрутів
    _routes.clear();
    _load();
  }
}
