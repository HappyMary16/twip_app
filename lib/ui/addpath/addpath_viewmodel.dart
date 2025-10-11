import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';
import 'package:twip_app/domain/models/path/path.dart';
import 'package:twip_app/utils/result.dart';

import '../../../data/repositories/path_repository.dart';

class AddPathViewModel extends ChangeNotifier {
  AddPathViewModel({
    required this.routeRepository,
    required this.paintingRepository,
  });

  final PathRepository routeRepository;
  final PaintingRepository paintingRepository;

  final List<Painting> _paintings = [];
  String? _errorMessage;

  final Set<Painting> _placesToVisit = {};
  String? _pathName;

  List<Painting> get paintings => _paintings;

  String? get errorMessage => _errorMessage;

  Set<Painting> get placesToVisit => _placesToVisit;

  Future<void> loadPaintings() async {
    try {
      Result<List<Painting>> result = await paintingRepository
          .getPaintingsWithErrorHandling();
      switch (result) {
        case Error<List<Painting>>():
          _errorMessage = "Sorry, paintings can't be loaded now :(";
          break;
        case Ok<List<Painting>>():
          _paintings.clear();
          _paintings.addAll(result.value);
      }
    } finally {
      notifyListeners();
    }
  }

  void updatePlaceToVisit(List<Painting> places) {
    _placesToVisit.addAll(places);
  }

  void updatePathName(String pathName) {
    _pathName = pathName;
  }

  void savePath() {
    var name = "Unnamed";
    if (_pathName != null) {
      name = _pathName.toString();
    }
    var paintingIds = _placesToVisit.map((p) => p.id).toList();

    routeRepository.addPath(
      Path(
        id: DateTime.timestamp().millisecond,
        name: name,
        paintings: paintingIds,
      ),
    );
  }
}
