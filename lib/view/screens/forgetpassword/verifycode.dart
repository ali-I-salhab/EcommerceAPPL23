import 'package:ecommerceapp/controller/forgetpassword/resetpasswordcontroller.dart';
import 'package:ecommerceapp/controller/auth/verifycodecontroller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/view/widget/auth/customauthbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/forgetpassword/forgetpasswordcontroller.dart';
import '../../../controller/auth/signupcontroller.dart';
import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/logo.dart';
import '../../widget/auth/textsignup.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifycodecontrollerImp controller = Get.put(VerifycodecontrollerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Text(
          'Verify Code',
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
              'Enter Verify code that were sended to your entered email',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 15,
            ),
            OtpTextField(
                textStyle: TextStyle(fontSize: 19),
                borderRadius: BorderRadius.circular(12),
                focusedBorderColor: AppColors.primarycolor,
                enabledBorderColor: AppColors.grey,
                borderColor: Colors.black,
                borderWidth: 5,
                showFieldAsBox: true,
                fieldWidth: 50,
                numberOfFields: 4,
                onSubmit: (String code) {
                  {
                    controller.gotoresetpassword(code);
                  }
                  // } else {
                  //   Get.dialog(AlertDialog(
                  //     title: Text('Wrong code'),
                  //   ));
                  // }
                }),

            const SizedBox(
              height: 15,
            ),

            // CustomAuthButton(
            //   text: 'Reset Password',
            //   onPressed: () {
            //     controller.gotoresetpage();
            //   },
            // ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
