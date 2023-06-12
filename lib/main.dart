// import 'package:ecommerceapp/testgetx%20/home.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:ecommerceapp/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservizes();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Mytranslation(),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Playfair',
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2,
                  height: 1.5),
              displayLarge: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Playfair',
                  fontWeight: FontWeight.bold,
                  color: AppColors.black))),
    );
  }
}
