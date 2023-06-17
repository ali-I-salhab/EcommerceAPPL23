import 'package:ecommerceapp/controller/auth/logincontroller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/view/widget/auth/customauthbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/logo.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LogincontrollerImp());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Text(
          'Login Page',
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
            const LogoAuth(),
            Text(
              'Welcome Back',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 30,
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
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  'Forget Password',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: AppColors.primarycolor),
                ),
              ),
              onTap: () {
                controller.gotoforgetpasword();
              },
            ),
            CustomAuthButton(
              text: 'Login',
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextSignup(
              ontap: () {
                controller.gotosignuppage();
              },
              firsttext: 'Dont Have an account  ',
              Secondtext: 'SignUp',
            )
          ],
        ),
      ),
    );
  }
}
