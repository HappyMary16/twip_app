import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';
import 'package:twip_app/domain/models/route/route.dart';

import '../../../data/repositories/roure_repository.dart';

class RouteViewModel extends ChangeNotifier {
  RouteViewModel({
    required this.routeRepository,
    required this.paintingRepository,
  });

  final RouteRepository routeRepository;
  final PaintingRepository paintingRepository;

  late Route _route;
  List<Painting> _paintings = [];

  Route get route => _route;
  List<Painting> get paintings => _paintings;

  void loadRout(int id) {
    try {
      _route = routeRepository.getById(id);
      for (var paintingId in _route.paintings) {
        _paintings.add(paintingRepository.getById(paintingId));
      }
    } finally {
      notifyListeners();
    }
  }

  void deleteRoute(int id) {
    try {} finally {
      notifyListeners();
    }
  }
}
