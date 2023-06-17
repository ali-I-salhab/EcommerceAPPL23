import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localcontroller extends GetxController {
  Locale? languageofdevice;
  MyServices myservices = Get.find();
  changelocale(String langcode) {
    Locale locale = Locale(langcode);
    myservices.shared.setString('lang', langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String language = myservices.shared.getString('lang').toString();

    if (language == 'ar') {
      languageofdevice = const Locale('ar');
    } else if (language == 'en') {
      languageofdevice = const Locale('en');
    } else {
      languageofdevice = Get.deviceLocale;
    }
    super.onInit();
  }
}
