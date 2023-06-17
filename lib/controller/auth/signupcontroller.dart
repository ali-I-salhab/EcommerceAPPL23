import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class Signupcontroller extends GetxController {
  signup();
  gotosignin();
}

class SignupcontrollerImp extends Signupcontroller {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
  @override
  gotosignin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  signup() {}
  @override
  void onInit() {
    email = TextEditingController();
    phone = TextEditingController();

    username = TextEditingController();

    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }
}