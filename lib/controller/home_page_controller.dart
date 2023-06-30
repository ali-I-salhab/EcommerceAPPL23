import 'package:ecommerceapp/core/services/services.dart';
import 'package:get/get.dart';

abstract class HomepageController extends GetxController {
  initiadata();
}

class HomepageControllerImp extends HomepageController {
  late String name;
  MyServices services = Get.find();
  String initiadata() {
    return name;
  }

  @override
  void onInit() {
    name = services.shared.getString('email')!;
    super.onInit();
  }
}
