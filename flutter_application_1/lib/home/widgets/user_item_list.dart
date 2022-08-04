import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../view_model/home_view_model.dart';

class UserItemList extends StatelessWidget {
  UserItemList({Key? key, required this.position}) : super(key: key);

  final viewModel = Get.find<HomeViewModel>();
  int position;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width * 0.9,
        height: Get.height * 0.2,
        margin: const EdgeInsets.only(top: 20),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '${viewModel.clientList[position].nombre!} -${viewModel.clientList[position].nombres!}${viewModel.clientList[position].apellidos!}'),
                  Text(viewModel.clientList[position].codigo!),
                  Text(viewModel.clientList[position].telefono!)
                ],
                // lo que se muestra en la pantalla
              ),
            )));
  }
}
