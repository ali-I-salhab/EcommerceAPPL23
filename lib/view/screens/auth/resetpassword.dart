import 'package:ecommerceapp/controller/auth/resetpasswordcontroller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/view/widget/auth/customauthbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgetpassword.dart';
import '../../../controller/auth/signupcontroller.dart';
import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/logo.dart';
import '../../widget/auth/textsignup.dart';

class ResetPasswrd extends StatelessWidget {
  const ResetPasswrd({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordcontrollerImp controller =
        Get.put(ResetpasswordcontrollerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Text(
          'Reset Password',
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
              'Enter Your new Password ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 15,
            ),

            const CustomTextFormField(
              hint: 'Enter Your password',
              icon: Icons.lock_outlined,
              label: 'new password',
              mycontroller: null,
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAuthButton(
              text: 'Reset',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}