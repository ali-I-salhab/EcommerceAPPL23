import 'dart:math';

import 'package:ecommerceapp/view/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/route.dart';
import '../core/services/services.dart';
import '../data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  next();
  onpagechanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  int currentpage = 0;
  MyServices servicescontroller = Get.find<MyServices>();
  late PageController pagecontroller;
  @override
  next() {
    currentpage++;
    if (currentpage > onboardinglist.length - 1) {
      servicescontroller.shared.setString('onboarding', '1');
      Get.offAllNamed(AppRoutes.login);
    }
    pagecontroller.animateToPage(currentpage,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
