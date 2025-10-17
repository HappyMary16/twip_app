import 'dart:convert';

import 'package:sqflite/sqflite.dart';

import '../../../domain/models/path/path.dart';
import 'db_factory.dart';

final String tablePath = 'path';
final String columnId = '_id';
final String columnName = 'name';
final String columnPaintings = 'paintings';

class PathDb {
  int id;
  String name;
  List<int> paintings;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnName: name,
      columnPaintings: paintings.toString(),
      columnId: id,
    };
    return map;
  }

  // Використовуємо named constructor
  PathDb.fromMap(Map<String, Object?> map)
    : id = jsonDecode(map[columnId].toString()) as int,
      name = map[columnName].toString(),
      paintings = (jsonDecode(map[columnPaintings].toString()) as List<dynamic>).cast<int>();

  PathDb.fromPath(Path path)
      : id = path.id,
        name = path.name,
        paintings = path.paintings;
}

class PathProvider {

  PathProvider({required TwipDbFactory dbFactory}): _dbFactory = dbFactory;

  final TwipDbFactory _dbFactory;

  Future<PathDb> insert(PathDb pathDb) async {
    Database db = await _dbFactory.database;
    pathDb.id = await db.insert(tablePath, pathDb.toMap());
    return pathDb;
  }

  Future<List<PathDb>> getPaths() async {
    Database db = await _dbFactory.database;
    List<Map<String, Object?>> maps = await db.query(
      tablePath,
      columns: [columnId, columnPaintings, columnName]
    );
    if (maps.length > 0) {
      return maps.map((elem) => PathDb.fromMap(elem)).toList();
    }
    return [];
  }

  Future<PathDb?> getPath(int id) async {
    Database db = await _dbFactory.database;
    List<Map<String, Object?>> maps = await db.query(
      tablePath,
      columns: [columnId, columnPaintings, columnName],
      where: '$columnId = ?',
      whereArgs: [id],
    );
    if (maps.length > 0) {
      return PathDb.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    Database db = await _dbFactory.database;
    return await db.delete(tablePath, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(PathDb pathDb) async {
    Database db = await _dbFactory.database;
    return await db.update(
      tablePath,
      pathDb.toMap(),
      where: '$columnId = ?',
      whereArgs: [pathDb.id],
    );
  }
}
