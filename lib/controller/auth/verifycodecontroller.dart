import 'package:ecommerceapp/core/constants/route.dart';
import 'package:get/get.dart';

abstract class Verifycodecontroller extends GetxController {
  gotoresetpage();
  checkcode();
}

class VerifycodecontrollerImp extends Verifycodecontroller {
  late String verifycode;

  gotoresetpage() {
    Get.toNamed(AppRoutes.resetpassword);
  }

  @override
  checkcode() {
    // TODO: implement checkcode
    // throw UnimplementedError();
  }
}
