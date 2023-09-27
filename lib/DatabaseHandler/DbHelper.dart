import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _db;

  static const DB_Name = 'test.db';
  static const String table_User = 'user';
  static const int version = 1;

  static const String C_UserID = 'userID';
  static const String C_UserName = 'user_name';
  static const String C_Email = 'Email';
  static const String C_telefono = 'telefono';
  static const String C_password = 'password';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationCacheDirectory();
    String path = Join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: version, onConfigure: _onCreate);
    return db;
  }

  _onCreate(Database db, int intversion) async {
    await db.execute("CREATE TABLE $table_User ("
          "$C_UserID TEXT,"
          "$C_UserName TEXT,"
          "$C_Email TEXT,"
          "$C_telefono int,"
          "$C_password TEXT,"
          "primary key ($C_UserID)"
          ")");
  }
}