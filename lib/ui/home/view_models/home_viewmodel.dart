import 'package:flutter/foundation.dart';
import 'package:twip_app/domain/models/route/route.dart';

import '../../../data/repositories/roure_repository.dart';

class HomeViewModel extends ChangeNotifier {

  HomeViewModel({required this.routeRepository}) {
    _load();
  }

  final RouteRepository routeRepository;

  final List<Route> _routes = [];

  List<Route> get routes => _routes;

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
