import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/apptheme.dart';

class Localcontroller extends GetxController {
  Locale? languageofdevice;
  ThemeData appthem = appthemEN;
  MyServices myservices = Get.find();
  changelocale(String langcode) {
    Locale locale = Locale(langcode);
    myservices.shared.setString('lang', langcode);
    langcode == 'en' ? appthem = appthemEN : appthem = appthemAR;
    Get.updateLocale(locale);
    Get.changeTheme(appthem);
  }

  @override
  void onInit() {
    String language = myservices.shared.getString('lang').toString();

    if (language == 'ar') {
      appthem = appthemAR;
      languageofdevice = const Locale('ar');
    } else if (language == 'en') {
      appthem = appthemEN;

      languageofdevice = const Locale('en');
    } else {
      languageofdevice = Get.deviceLocale;
    }
    super.onInit();
  }
}
