import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/view_model/login_view_model.dart';
import 'package:get/get.dart';

import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final viewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 0, 0, 61),
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                logo(),
                campoUsuario(),
                campoContrasena(),
                btnEntrar()
              ]),
        ),
      ),
    );
  }

  Widget singIn() {
    return const Text('Sing in',
        style: TextStyle(color: Colors.white, fontSize: 35));
  }

  Widget campoUsuario() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      /*child: TextField(
        controller: viewModel.userTextField,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: 'User',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),*/
      child: CustomTextField(
        userEditingController: viewModel.userTextField,
        prefixIconData: Icons.person,
        hint: 'usuario',
        maxLenght: 20,
      ),
    );
  }

  Widget campoContrasena() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomTextField(
          userEditingController: viewModel.passwordTextField,
          prefixIconData: Icons.lock,
          hint: 'password',
          maxLenght: 20,
        ));
  }

  Widget btnEntrar() {
    return SizedBox(
      width: Get.width * 0.6,
      height: Get.height * 0.2,
      child: Expanded(
          child: CustomButton(
              onPressed: () {
                viewModel.login();
              },
              text: 'iniciar Sesion')),
    );
    /*ElevatedButton(
        child: const Text('Iniciar Sesion',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 61, 1),
            )),
        onPressed: () {
          viewModel.login();
        });*/
  }

  Widget logo() {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Image.asset(
            'res/images/logo.png',
            width: 100,
          ),
        ],
      ),
    );
  }
}
