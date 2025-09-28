import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';

class PaintingsViewModel extends ChangeNotifier {
  PaintingsViewModel({required this.paintingRepository});

  final PaintingRepository paintingRepository;

  final List<Painting> _paintings = [];

  List<Painting> get paintings => _paintings;

  Future<void> loadPaintings() async {
    try {
      _paintings.addAll(await paintingRepository.getPaintings());
    } finally {
      notifyListeners();
    }
  }
}
