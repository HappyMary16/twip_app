import 'package:twip_app/data/services/model/painting/painting_api.dart';

import '../../domain/models/painting/painting.dart';
import '../../utils/result.dart';
import '../services/api_service.dart';

class PaintingRepository {
  PaintingRepository({required ApiService apiService})
    : _apiService = apiService;

  final ApiService _apiService;

  List<Painting> _cachedPaintings = [];

  Future<List<Painting>> getPaintings() async {
    if (_cachedPaintings.isEmpty) {
      final result = await _apiService.getPaintings();
      _cachedPaintings = result
          .map((p) => Painting(id: p.id, name: p.title.uk ?? p.title.en ?? ""))
          .toList();
    }

    return _cachedPaintings;
  }

  Future<Result<List<Painting>>> getPaintingsWithErrorHandling() async {
    if (_cachedPaintings.isEmpty) {
      final result = await _apiService.getPaintingsWithErrorHandling();
      switch (result) {
        case Error<List<PaintingApi>>():
          return Result.error(result.error);
        case Ok<List<PaintingApi>>():
          // executes code after switch block
      }

      _cachedPaintings = result.value
          .map((p) => Painting(id: p.id, name: p.title.uk ?? p.title.en ?? ""))
          .toList();
    }

    return Result.ok(_cachedPaintings);
  }

  Future<Painting> getById(int ref) async {
    if (_cachedPaintings.isEmpty) {
      await getPaintings();
    }

    return _cachedPaintings.firstWhere((p) => p.id == ref);
  }
}
