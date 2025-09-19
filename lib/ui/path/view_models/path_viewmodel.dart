import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';
import 'package:twip_app/domain/models/path/path.dart';

import '../../../data/repositories/path_repository.dart';

class PathViewModel extends ChangeNotifier {
  PathViewModel({
    required this.routeRepository,
    required this.paintingRepository,
  });

  final PathRepository routeRepository;
  final PaintingRepository paintingRepository;

  late Path _route;
  List<Painting> _paintings = [];

  Path get route => _route;

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
}
