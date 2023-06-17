import 'package:ecommerceapp/core/constants/route.dart';
import 'package:get/get.dart';

abstract class Verifycodecontroller extends GetxController {
  gotoresetpage();
}

class VerifycodecontrollerImp extends Verifycodecontroller {
  gotoresetpage() {
    Get.toNamed(AppRoutes.resetpassword);
  }
}
