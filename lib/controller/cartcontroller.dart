import 'package:ecommerceapp/core/class/statusrequest.dart';

import 'package:ecommerceapp/core/functions/handlingdata.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/datasource/remote/cartdata.dart';
import 'package:ecommerceapp/data/model/cartmodel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

abstract class CartController extends GetxController {
  addtocart(String itemid);
  removefromcart(String itemid);
}

class CartControllerImp extends CartController {
  List<CartModel> cartviewdata = [];
  late String totalcount = '';
  late String totalprice = '';
  late MyServices services = Get.find();
  Statusrequest statusrequest = Statusrequest.none;

  CartData cartdata = CartData(Get.find());

  @override
  addtocart(String itemid) async {
    statusrequest = Statusrequest.loading;
    update();

    var response =
        await cartdata.addtocart(services.shared.getString('id')!, itemid);

    statusrequest = handlingdata(response);

    if (statusrequest == Statusrequest.success) {
      if (response['status'] == 'success') {
        // Get.rawSnackbar(title: "sucess", message: "added to cart");
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
    update();
  }

  @override
  removefromcart(String itemid) async {
    statusrequest = Statusrequest.loading;
    update();

    var response =
        await cartdata.removefromcart(services.shared.getString('id')!, itemid);

    statusrequest = handlingdata(response);

    if (statusrequest == Statusrequest.success) {
      if (response['status'] == 'success') {
        // Get.rawSnackbar(title: "sucess", message: "remved from cart");
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
    update();
  }

  itemcount(String itemid) async {
    var count;
    statusrequest = Statusrequest.loading;
    update();
    var response = count =
        await cartdata.itemcount(services.shared.getString('id')!, itemid);

    statusrequest = handlingdata(response);

    if (statusrequest == Statusrequest.success) {
      if (response['status'] == 'success') {
        count = response['data'];

//   "cart_userid": "45",
        // "totalprice": "2429",
        // "totalitemcount": "11"
        return count;
      } else {
        statusrequest = Statusrequest.failure;
      }
    }
  }

  cartview(String userid) async {
    statusrequest = Statusrequest.loading;
    update();

    var response = await cartdata.cartview(services.shared.getString('id')!);
    print("rrrrrrrrrrrrrresponse $response");
    statusrequest = handlingdata(response);

    if (statusrequest == Statusrequest.success) {
      if (response['status'] == 'success') {
        List re = response["data"];
        cartviewdata.clear();
        cartviewdata.addAll(re.map((e) => CartModel.fromJson(e)));
        totalcount = response['pricecounttotal'][0]['totalitemcount'];
        totalprice = response['pricecounttotal'][0]['totalprice'];
        update();
      } else {
        statusrequest = Statusrequest.failure;
        update();
      }
    }
    update();
  }

  refreshcartpage() async {
    totalcount = "0";
    totalprice = '0';

    await cartview(services.shared.getString('id')!);
  }

  initdata() async {
    await cartview(services.shared.getString("id")!);
  }

  @override
  void onInit() {
    initdata();
    super.onInit();
  }
}
