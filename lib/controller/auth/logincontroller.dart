import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/remote/auth/login_data.dart';

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
  Statusrequest statusrequest = Statusrequest.none;
  GlobalKey<FormState> formstatelogin = GlobalKey<FormState>();
  LoginData logindata = LoginData(Get.find());
  @override
  login() async {
    if (formstatelogin.currentState!.validate()) {
      statusrequest = Statusrequest.loading;
      update();
      var response = await logindata.postdata(
          email.text.toString(), password.text.toString());

      statusrequest = handlingdata(response);

      if (statusrequest == Statusrequest.success) {
        if (response['status'] == 'success') {
          Get.offAllNamed(AppRoutes.homepage);
        } else {
          Get.defaultDialog(
              title: "Error ", middleText: "email or password not valid");
          //here every thing ok but no data where pounded
          // statusrequest = Statusrequest.failure;
        }
      }

      update();
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
