import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view_model/home_view_model.dart';
import 'package:flutter_application_1/login/model/seller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final viewModel = Get.find<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(children: <Widget>[
          card1(viewModel.seller),
        ])));
  }
}

Widget card1(Seller seller) {
  return Container(
    width: Get.width * 0.9,
    height: Get.height * 0.2,
    margin: const EdgeInsets.only(top: 20),
    child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [Text(seller.nombre)], // lo que se muestra en la pantalla
          ),
        )),
  );
}
