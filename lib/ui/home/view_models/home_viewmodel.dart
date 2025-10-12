import 'package:flutter/foundation.dart';
import 'package:twip_app/domain/models/path/path.dart';

import '../../../data/repositories/path/path_repository.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({required this.routeRepository}) {
    _load();
  }

  final PathRepository routeRepository;

  final List<Path> _routes = [];

  List<Path> get routes => _routes;

  Future<void> _load() async {
    try {
      _routes.addAll(await routeRepository.getPaths());
    } finally {
      notifyListeners();
    }
  }

  void deleteRoute(int id) {
    routeRepository.deletePath(id);

    // Завантажуємо оновлений список маршрутів
    _routes.clear();
    _load();
  }
}
