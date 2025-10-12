import 'package:twip_app/data/repositories/path/path_repository.dart';
import 'package:twip_app/domain/models/path/path.dart';

import '../db/path_provider.dart';

/// Зберігає дані в SQLite
class PathRepositoryStore extends PathRepository {
  PathRepositoryStore({required PathProvider pathProvider})
    : _pathProvider = pathProvider;

  final PathProvider _pathProvider;

  @override
  Future<List<Path>> getPaths() async {
    List<PathDb> pathDbs = await _pathProvider.getPaths();

    return pathDbs
        .map((e) => Path(id: e.id, name: e.name, paintings: e.paintings))
        .toList();
  }

  @override
  Future<Path> getById(int ref) async {
    PathDb? pathDb = await _pathProvider.getPath(ref);

    if (pathDb == null) {
      throw Exception("Path not found");
    }

    return Path(id: pathDb.id, name: pathDb.name, paintings: pathDb.paintings);
  }

  @override
  Future<void> deletePath(int ref) async {
    _pathProvider.delete(ref);
  }

  @override
  Future<void> addPath(Path path) async {
    _pathProvider.insert(PathDb.fromPath(path));
    print("New path is saved");
  }
}
