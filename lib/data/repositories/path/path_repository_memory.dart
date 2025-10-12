import 'package:twip_app/data/repositories/path/path_repository.dart';
import 'package:twip_app/domain/models/path/path.dart';

/// Зберігає дані в оперативній памʼяті
class PathRepositoryMemory extends PathRepository {

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

  @override
  Future<List<Path>> getPaths() async {
    return _routes;
  }

  @override
  Future<Path> getById(int id) async {
    return _routes.firstWhere((route) => route.id == id);
  }

  @override
  Future<void> deletePath(int id) async {
    _routes.removeWhere((route) => route.id == id);
  }

  @override
  Future<void> addPath(Path path) async {
    _routes.add(path);
    print("New path is saved");
  }
}
