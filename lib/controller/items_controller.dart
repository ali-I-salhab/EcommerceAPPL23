import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initdata();
  ontapcat(int val);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selectedcat;
  @override
  initdata() {
    categories = Get.arguments['categories'];
    selectedcat = Get.arguments['selectedcat'];
  }

  @override
  void onInit() {
    initdata();
    super.onInit();
  }

  @override
  ontapcat(int val) {
    selectedcat = val;
    update();
  }
}
