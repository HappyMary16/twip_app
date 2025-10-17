import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';
import 'package:twip_app/domain/models/path/path.dart';

import '../../../data/repositories/path/path_repository.dart';

class PathViewModel extends ChangeNotifier {
  PathViewModel({
    required this.pathRepository,
    required this.paintingRepository,
  });

  final PathRepository pathRepository;
  final PaintingRepository paintingRepository;

  Path? _path;
  final List<Painting> _paintings = [];

  Path? get path => _path;

  List<Painting> get paintings => _paintings;

  Future<void> loadRout(int id) async {
    try {
      _path = await pathRepository.getById(id);
      if (_path == null) {
        return;
      }
      for (var paintingId in _path!.paintings) {
        Painting painting = await paintingRepository.getById(paintingId);
        _paintings.add(painting);
      }
    } finally {
      notifyListeners();
    }
  }
}
