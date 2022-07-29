import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/sqlite.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../../home/View/home.dart';

class LoginViewModel extends GetxController {
  TextEditingController userTextField = TextEditingController();
  TextEditingController passwordTextField = TextEditingController();

  Future<void> login() async {
    SqliteService sqliteService = SqliteService();
    Database db = await sqliteService.openDB();
    String usuario = userTextField.text;
    String password = passwordTextField.text;

    String statement =
        "SELECT * FROM usuario WHERE usuario = $usuario AND password = $password";
    try {
      List<Map> result = await db.rawQuery(statement);
      if (result.isNotEmpty) {
        searchSeller(usuario);
      }
    } catch (e) {
      Get.snackbar("Error", 'El usuario o la contraseña son incorrectos',
          backgroundColor: Colors.red.shade400, colorText: Colors.white);
    }
  }

  void searchSeller(String codigo) async {
    SqliteService sqliteService = SqliteService();
    Database db = await sqliteService.openDB();

    String statement =
        "SELECT bodega, codigo, nombre, fechaLabores, fechaConsecutivo, consecutivo, empresa, distrito, portafolio, moneda, tipo FROM vendedor WHERE codigo = $codigo ";
    try {
      List<Map> result = await db.rawQuery(statement);
      if (result.isNotEmpty) {
        Get.to(() => HomeScreen());
      }
    } catch (e) {
      Get.snackbar("Error", 'El usuario no existe',
          backgroundColor: Colors.red.shade400, colorText: Colors.white);
    }
  }
}
//print('resutl:' + result.first.toString());