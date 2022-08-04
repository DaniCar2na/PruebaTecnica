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
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(180, 181, 181, 180),
          body: Column(
            children: [
              Center(
                child: card1(viewModel.seller),
              ),
              Obx(() => SingleChildScrollView(
                    controller: viewModel.scrollController,
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      height: Get.width,
                      width: Get.width * 0.95,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: false,
                        itemCount: viewModel.clientList.length,
                        itemBuilder: (BuildContext context, int position) {
                          return UserItemList(position: position);
                        },
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}

Widget card1(Seller seller) {
  return SizedBox(
    width: Get.width * 0.95,
    height: Get.height * 0.2,
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
