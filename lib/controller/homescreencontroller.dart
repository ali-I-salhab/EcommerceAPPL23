import 'package:ecommerceapp/core/constants/route.dart';
import 'package:ecommerceapp/view/screens/homepage.dart';
import 'package:ecommerceapp/view/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changepage(int i);
  gotocartpage();
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> widget = [
    const HomePage(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("favrite"))],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("profile"))],
    ),
    SettingPage()
  ];
  List<Map> titleappbar = [
    {"title": "home", "icon": Icons.home_outlined},
    {"title": "favorite", "icon": (Icons.favorite_outline)},
    {"title": "profile", "icon": (Icons.person_2_outlined)},
    {"title": "setting", "icon": (Icons.settings_outlined)},
  ];
  gotocartpage() {
    Get.toNamed(AppRoutes.cart);
  }

  @override
  changepage(int i) {
    currentpage = i;

    update();
  }
}
