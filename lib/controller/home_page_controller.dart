import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdata.dart';

abstract class HomepageController extends GetxController {
  initiadata();
  getdata();
}

class HomepageControllerImp extends HomepageController {
  late String name;
  late MyServices services = Get.find();
  Statusrequest statusrequest = Statusrequest.none;
  List categories = [];
  HomeData homedata = HomeData(Get.find());
  String initiadata() {
    return name;
  }

  @override
  getdata() async {
    statusrequest = Statusrequest.loading;
    update();
    var response = await homedata.postdata();

    statusrequest = handlingdata(response);

    if (statusrequest == Statusrequest.success) {
      if (response['status'] == 'success') {
        categories.addAll(response['categories']);
        print("categories---------------------");
        print(categories);
      } else {
        Get.defaultDialog(
            title: "Error",
            middleText: "email not registered ... try to login ");
        //here every thing ok but no data where pounded
        // statusrequest = Statusrequest.failure;
      }
    }
  }

  @override
  void onInit() {
    getdata();
    name = services.shared.getString('email')!;
    super.onInit();
  }
}
