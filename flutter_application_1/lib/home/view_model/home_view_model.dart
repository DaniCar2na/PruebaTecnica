import 'package:flutter_application_1/home/View/home.dart';
import 'package:flutter_application_1/login/model/seller.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  Seller seller;
  HomeViewModel({required this.seller}) {
    Get.to(() => HomeScreen());
  }
}
