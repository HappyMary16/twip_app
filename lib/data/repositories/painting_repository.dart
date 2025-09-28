import '../../domain/models/painting/painting.dart';
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

  Future<Painting> getById(int ref) async {
    if (_cachedPaintings.isEmpty) {
      await getPaintings();
    }

    return _cachedPaintings.firstWhere((p) => p.id == ref);
  }
}
