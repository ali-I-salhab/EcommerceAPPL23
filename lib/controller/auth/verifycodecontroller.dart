import 'package:ecommerceapp/core/constants/route.dart';
import 'package:ecommerceapp/data/datasource/remote/auth/verifycode_data.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';

abstract class Verifycodecontroller extends GetxController {
  gotoresetpassword(var verifycode);
}

class VerifycodecontrollerImp extends Verifycodecontroller {
  late String verifycode;
  late String email;
  late Statusrequest statusrequest;
  VerifyCodeData verifycodedata = VerifyCodeData(Get.find());
  @override
  gotoresetpassword(var verifycode) async {
    statusrequest = Statusrequest.loading;
    update();
    var response = await verifycodedata.postdata(email, verifycode);

    statusrequest = handlingdata(response);

    if (statusrequest == Statusrequest.success) {
      if (response['status'] == 'success') {
        Get.toNamed(AppRoutes.resetpassword, arguments: {"email": email});
        // data.addAll(response['data']);
      } else {
        Get.defaultDialog(title: "Error ", middleText: "wrong verify code");
        //here every thing ok but no data where pounded
        // statusrequest = Statusrequest.failure;
      }
    }

    update();
    // Get.toNamed(AppRoutes.resetpassword);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    // TODO: implement onInit
    super.onInit();
  }
}
