import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  gotoverifycode();
}

class ForgetpasswordcontrollerImp extends Forgetpasswordcontroller {
  @override
  late TextEditingController email;
  gotoverifycode() {
    Get.toNamed(AppRoutes.verifycode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
