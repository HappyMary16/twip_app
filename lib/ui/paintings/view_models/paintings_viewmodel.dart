import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';

class PaintingsViewModel extends ChangeNotifier {
  PaintingsViewModel({required this.paintingRepository});

  final PaintingRepository paintingRepository;

  List<Painting> _paintings = [];

  List<Painting> get paintings => _paintings;

  void loadRout() {
    try {
      _paintings.addAll(paintingRepository.paintings);
    } finally {
      notifyListeners();
    }
  }
}
