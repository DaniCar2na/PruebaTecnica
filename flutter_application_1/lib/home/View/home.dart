import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view_model/home_view_model.dart';
import 'package:flutter_application_1/home/widgets/user_item_list.dart';
import 'package:flutter_application_1/login/model/seller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final viewModel = Get.find<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(180, 181, 181, 180),
        body: Center(
            child: Column(children: <Widget>[
          card1(viewModel.seller),
          Obx(() => ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: viewModel.clientList.length,
                itemBuilder: (BuildContext context, int position) {
                  return UserItemList(position: position);
                },
              )),
        ])));
  }
}

Widget card1(Seller seller) {
  return SizedBox(
    width: Get.width * 1,
    height: Get.height * 0.2,
    child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [Text(seller.nombre)], // lo que se muestra en la pantalla
          ),
        )),
  );
}
