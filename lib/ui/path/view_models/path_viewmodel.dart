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
  final List<Painting> _paintings = [];

  Path get route => _route;

  List<Painting> get paintings => _paintings;

  Future<void> loadRout(int id) async {
    try {
      _route = routeRepository.getById(id);
      for (var paintingId in _route.paintings) {
        Painting painting = await paintingRepository.getById(paintingId);
        _paintings.add(painting);
      }
    } finally {
      notifyListeners();
    }
  }
}
