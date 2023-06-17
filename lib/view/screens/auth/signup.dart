import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/view/widget/auth/customauthbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signupcontroller.dart';
import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/logo.dart';
import '../../widget/auth/textsignup.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupcontrollerImp controller = Get.put(SignupcontrollerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Text(
          'Signup Page',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: AppColors.black, fontFamily: 'playfair'),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(35),
        child: ListView(
          children: [
            // const LogoAuth(),
            Text(
              'Welcome Back',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hint: 'Enter Your username',
              icon: Icons.person_2_outlined,
              label: 'username',
              mycontroller: controller.username,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hint: 'Enter Your phone number',
              icon: Icons.phone_outlined,
              label: 'Phone',
              mycontroller: controller.phone,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hint: 'Enter Your Email',
              icon: Icons.email_outlined,
              label: 'Email',
              mycontroller: controller.email,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              hint: 'Enter Youe Password',
              icon: Icons.lock_outline,
              label: 'password',
              mycontroller: controller.password,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAuthButton(
              text: 'Signup',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            TextSignup(
              ontap: () {},
              firsttext: 'Have an account !!   ',
              Secondtext: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
