import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view_model/home_view_model.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final viewModel = Get.put(HomeViewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(181, 181, 180, 1),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: Column(children: <Widget>[
              card1(),
            ]))));
  }
}

Widget card1() {
  return Container(
    width: Get.width * 0.9,
    height: Get.height * 0.2,
    margin: const EdgeInsets.only(top: 20),
    child: Expanded(
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [Text('')],
            ),
          )),
    ),
  );
}
