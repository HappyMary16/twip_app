import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:twip_app/data/repositories/db/path_provider.dart';

class TwipDbFactory {

  final _database = openTwipDb();

  Future<Database> get database async => await _database;

  static Future<Database> openTwipDb() async {
    if (kIsWeb) {
      // Change default factory on the web
      databaseFactory = databaseFactoryFfiWeb;
    }

    return openDatabase(
      "twip.db",
      version: 1,
      onCreate: (Database db, int version) => createAppTables(db, version),
    );
  }

  static Future createAppTables(Database db, int version) async {
    // Створюємо таблицю для моделі Path
    await db.execute('''
      create table $tablePath ( 
        $columnId integer primary key autoincrement, 
        $columnName text not null,
        $columnPaintings text not null)
''');
  }
}
