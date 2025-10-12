import 'dart:convert';

import 'package:sqflite/sqflite.dart';

import '../../../domain/models/path/path.dart';

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

  late Database _db;
  bool dbInitide = false;

  Future open(String path) async {
    if (dbInitide) {
      return;
    }

    print("Init db");
    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
create table $tablePath ( 
  $columnId integer primary key autoincrement, 
  $columnName text not null,
  $columnPaintings text not null)
''');
      },
    );

    dbInitide = true;
    print("Db inited");
  }

  Future<PathDb> insert(PathDb todo) async {
    await open("twip.db");
    todo.id = await _db.insert(tablePath, todo.toMap());
    return todo;
  }

  Future<List<PathDb>> getPaths() async {
    await open("twip.db");
    List<Map<String, Object?>> maps = await _db.query(
      tablePath,
      columns: [columnId, columnPaintings, columnName]
    );
    if (maps.length > 0) {
      return maps.map((elem) => PathDb.fromMap(elem)).toList();
    }
    return [];
  }

  Future<PathDb?> getPath(int id) async {
    await open("twip.db");
    List<Map<String, Object?>> maps = await _db.query(
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
    await open("twip.db");
    return await _db.delete(tablePath, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(PathDb todo) async {
    await open("twip.db");
    return await _db.update(
      tablePath,
      todo.toMap(),
      where: '$columnId = ?',
      whereArgs: [todo.id],
    );
  }

  Future close() async => _db.close();
}
