import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class SqliteService {
  String dbName = 'DataBase.db';

  @override
  Future<Database> openDB() async {
    var db = await openDatabase('DataBase.db');
    /* String dirStringPath = 'database/DataBase.db';
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'DataBase.db');
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });*/
    return db;
    //return database;
    //return await openDatabase(dbName);
    //return await openDatabase(join(dirStringPath, dbName));
  }

  @override
  Future closeDB(Database db) async {
    await db.close();
  }
}
