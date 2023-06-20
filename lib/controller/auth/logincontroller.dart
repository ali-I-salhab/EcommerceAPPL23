import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  gotosignuppage();
  gotoforgetpasword();
  login();
  showpassword();
}

class LogincontrollerImp extends Logincontroller {
  late TextEditingController email;
  bool passwordstatus = true;
  late TextEditingController password;
  GlobalKey<FormState> formstatelogin = GlobalKey<FormState>();
  @override
  login() {
    print('hello from login controller ');
    if (formstatelogin.currentState!.validate()) {
      print('valid');
    } else {
      print('not valid');
    }
  }

  @override
  gotosignuppage() {
    Get.offAllNamed(AppRoutes.signup);
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

  @override
  showpassword() {
    passwordstatus = !passwordstatus;
    update();
  }
}
