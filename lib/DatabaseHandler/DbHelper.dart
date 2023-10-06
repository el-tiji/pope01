import 'package:path_provider/path_provider.dart';
import 'package:pope01/Models/UserModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _db;

  static const String DB_Name = 'test.db';
  static const String table_User = 'user';
  static const int version = 1;

  static const String C_UserID = 'user_ID';
  static const String C_UserName = 'user_name';
  static const String C_Email = 'Email';
  static const String C_telefono = 'telefono';
  static const String C_password = 'password';

  Future<Database> get db async {
    if (_db != null) {
      return db;
    }

    _db = await initDb();
    return db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    // Usar join en minúscula
    var db = await openDatabase(path, version: version, onCreate: _onCreate);
    // Usar onCreate en lugar de onConfigure
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

  Future<UserModel> saveData(UserModel user) async {
    var dbClient = await db;
    user.user_ID = (await dbClient.insert(table_User, user.toMap())) as String;
    return user;
  }

  Future<List<UserModel>?> getLoginUser(String user_ID, String password) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("Select * from $table_User WHERE"
        "$C_UserID = '$user_ID'AND"
        "$C_password= '$password'");
    if (res.isNotEmpty) {
      return res.map((e) => UserModel.fromMap(e)).toList();
    }
    return null;
  }
}