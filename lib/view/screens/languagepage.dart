import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/auth/customlanguagebutton.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomLanhuageButton(
            buttontext: 'ar',
            onPressed: () {},
          ),
          CustomLanhuageButton(
            buttontext: 'en',
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
