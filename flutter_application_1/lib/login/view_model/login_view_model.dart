import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/database/sqlite.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class LoginViewModel extends GetxController {
  TextEditingController userTextField = TextEditingController();
  TextEditingController passwordTextField = TextEditingController();

  SqliteService sqliteService = SqliteService();

  login() async {
    var db = await openDatabase('DataBase.db');
    //Database db = await sqliteService.openDB();

    String statement = "Select * from Clientes";

    List<Map> list = await db.rawQuery(statement);
    print(list.first);
  }
}
