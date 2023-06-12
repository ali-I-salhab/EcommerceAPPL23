import 'package:ecommerceapp/controller/onboardingcontroller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/datasource/static/static.dart';
import '../widget/onboarding/onboardingcustombutton.dart';
import '../widget/onboarding/onboardingdots.dart';
import '../widget/onboarding/sonboardingcustomslider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingControllerImp controller = Get.put(OnboardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: CustomOnboardingSlider(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    Customdotonboarding(),
                    CustomButtonOnboarding()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
