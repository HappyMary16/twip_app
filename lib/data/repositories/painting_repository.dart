import '../../domain/models/painting/painting.dart';

class PaintingRepository {
  final List<Painting> _paintings = [
    Painting.fromJson({"id": 1, "name": "Nice painting 1"}),
    Painting.fromJson({"id": 2, "name": "Nice painting 2"}),
    Painting.fromJson({"id": 3, "name": "Nice painting 3"}),
    Painting.fromJson({"id": 4, "name": "Nice painting 4"}),
    Painting.fromJson({"id": 5, "name": "Nice painting 5"}),
  ];

  List<Painting> get paintings => _paintings;

  Painting getById(int ref) {
    return _paintings.firstWhere((p) => p.id == ref);
  }
}
