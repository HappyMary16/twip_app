import 'package:flutter/foundation.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/domain/models/painting/painting.dart';
import 'package:twip_app/utils/result.dart';

class PaintingsViewModel extends ChangeNotifier {
  PaintingsViewModel({required this.paintingRepository});

  final PaintingRepository paintingRepository;

  final List<Painting> _paintings = [];
  String? _errorMessage;

  List<Painting> get paintings => _paintings;
  String? get errorMessage => _errorMessage;

  Future<void> loadPaintings() async {
    try {
      Result<List<Painting>> result = await paintingRepository.getPaintingsWithErrorHandling();
      switch (result) {
        case Error<List<Painting>>():
          _errorMessage = result.error.toString();
          break;
        case Ok<List<Painting>>():
          _paintings.clear();
          _paintings.addAll(result.value);
      }
    } finally {
      notifyListeners();
    }
  }
}
