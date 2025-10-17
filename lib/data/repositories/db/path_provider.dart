import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

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
  bool dbInited = false;

  Future open(String path) async {
    if (dbInited) {
      return;
    }

    print("Init db");
    if (kIsWeb) {
      // Change default factory on the web
      databaseFactory = databaseFactoryFfiWeb;
    }

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

    dbInited = true;
    print("Db inited");
  }

  Future<PathDb> insert(PathDb pathDb) async {
    await open("twip.db");
    pathDb.id = await _db.insert(tablePath, pathDb.toMap());
    return pathDb;
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

  Future<int> update(PathDb pathDb) async {
    await open("twip.db");
    return await _db.update(
      tablePath,
      pathDb.toMap(),
      where: '$columnId = ?',
      whereArgs: [pathDb.id],
    );
  }

  Future close() async => _db.close();
}
