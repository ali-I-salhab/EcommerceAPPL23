import 'package:ecommerceapp/view/widget/auth/login.dart';
import 'package:flutter/material.dart';

import 'core/constants/route.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login()
};
