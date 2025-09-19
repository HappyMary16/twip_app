import 'package:twip_app/domain/models/path/path.dart';

class PathRepository {
  final List<Path> _routes = [
    Path.fromJson({
      "id": 1,
      "name": "Nice route 1",
      "paintings": [1, 2, 3, 4, 5],
    }),
    Path.fromJson({
      "id": 2,
      "name": "Nice route 2",
      "paintings": [2, 4],
    }),
    Path.fromJson({
      "id": 3,
      "name": "Nice route 3",
      "paintings": [1, 3],
    }),
    Path.fromJson({
      "id": 4,
      "name": "Nice route 4",
      "paintings": [3, 5],
    }),
    Path.fromJson({
      "id": 5,
      "name": "Nice route 5",
      "paintings": [4, 1],
    }),
  ];

  List<Path> get routes => _routes;

  Path getById(int ref) {
    return _routes.firstWhere((route) => route.id == ref);
  }

  void deleteRoute(int ref) {
    _routes.removeWhere((route) => route.id == ref);
  }
}
