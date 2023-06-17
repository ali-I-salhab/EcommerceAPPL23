import 'package:ecommerceapp/view/screens/auth/forgetpassword.dart';
import 'package:ecommerceapp/view/screens/auth/resetpassword.dart';
import 'package:ecommerceapp/view/screens/auth/verifycode.dart';
import 'package:ecommerceapp/view/screens/onboarding.dart';
import 'package:ecommerceapp/view/screens/auth/login.dart';
import 'package:ecommerceapp/view/screens/auth/signup.dart';
import 'package:flutter/material.dart';

import 'core/constants/route.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboarding: (context) => const Onboarding(),
  AppRoutes.signup: (contex) => const Signup(),
  AppRoutes.forgetpassword: (context) => const Forgetpassword(),
  AppRoutes.verifycode: (context) => const Verifycode(),
  AppRoutes.resetpassword: (context) => const ResetPasswrd()
};
