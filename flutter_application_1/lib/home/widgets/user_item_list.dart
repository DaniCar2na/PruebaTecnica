import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/home_view_model.dart';

class UserItemList extends StatelessWidget {
  UserItemList({Key? key, required this.position}) : super(key: key);

  final viewModel = Get.find<HomeViewModel>();
  final int position;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width * 0.7,
        height: Get.height * 0.20,
        margin: const EdgeInsets.only(top: 10),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              // padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                top: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 14, 74, 165),
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                      '${viewModel.clientList[position].nombre!} -${viewModel.clientList[position].nombres!}${viewModel.clientList[position].apellidos!}'),
                  Text(viewModel.clientList[position].codigo!,
                      style: const TextStyle(
                          leadingDistribution:
                              TextLeadingDistribution.proportional,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text(
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    viewModel.clientList[position].telefono!,
                  )
                ],
                // lo que se muestra en la pantalla
              ),
            )));
  }
}
