import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  gotosignuppage();
  gotoforgetpasword();
  login();
}

class LogincontrollerImp extends Logincontroller {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {}

  @override
  gotosignuppage() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    print('init controller of login page');
    email = TextEditingController();

    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpasword() {
    Get.toNamed(AppRoutes.forgetpassword);
  }
}
