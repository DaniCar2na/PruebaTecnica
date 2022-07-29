import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/View/home.dart';
import 'package:flutter_application_1/login/view_model/login_view_model.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final viewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 61, 1),
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
      child: TextField(
        controller: viewModel.userTextField,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: 'User',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget campoContrasena() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextField(
          controller: viewModel.passwordTextField,
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ));
  }

  Widget btnEntrar() {
    return ElevatedButton(
        child: const Text('Iniciar Sesion',
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 61, 1),
            )),
        onPressed: () {
          viewModel.login();
          Get.to(() => const HomeScreen());
        });
  }
}
