import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/database/sqlite.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class LoginViewModel extends GetxController {
  TextEditingController userTextField = TextEditingController();
  TextEditingController passwordTextField = TextEditingController();

  Future<void> login() async {
    SqliteService sqliteService = SqliteService();
    Database db = await sqliteService.openDB();

    String statement = 'SELECT * FROM vendedor';

    List<Map> list = await db.rawQuery(statement);

    print('resutl:' + list.first.toString());
  }
}
