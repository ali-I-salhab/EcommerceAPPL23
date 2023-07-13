import 'package:ecommerceapp/controller/cartcontroller.dart';
import 'package:ecommerceapp/controller/productdetailscontroller.dart';
import 'package:ecommerceapp/core/class/handlingdataview.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/core/constants/imageassets.dart';
import 'package:ecommerceapp/linkapi.dart';
import 'package:ecommerceapp/view/widget/cart/customCartItems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartControllerImp controllercart = Get.put(CartControllerImp());
    // ProductDetailsControllerImp pcontroller =
    //     Get.put(ProductDetailsControllerImp());
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            gradient: LinearGradient(stops: const [
              1,
              10
            ], colors: [
              Color.fromARGB(103, 226, 209, 197),
              Color.fromARGB(122, 255, 125, 18).withOpacity(0.7)
            ]),
          ),
          height: 100,
          width: 500,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GetBuilder<CartControllerImp>(
                    builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "total Count: ",
                            style: TextStyle(color: Colors.green),
                          ),
                          Text(
                            "${controllercart.totalcount}",
                            style: TextStyle(
                                color: Colors.red, fontFamily: 'sans'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("total Price :",
                              style: TextStyle(color: Colors.green)),
                          // 300\$
                          Text(
                            "${controllercart.totalprice}",
                            style: TextStyle(
                                color: Colors.red, fontFamily: 'sans'),
                          ),
                        ],
                      );
                    },
                  )),
              Spacer(),
              Container(
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primarycolor,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text(
                    "Add order",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.width / 9,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      stops: [1, 10],
                      colors: [AppColors.primarycolor, Colors.white]),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        spreadRadius: 2,
                        blurRadius: 5),
                  ],
                  color: AppColors.primarycolor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                        opticalSize: 0.2,
                        weight: 34,
                        fill: 0.5,
                        grade: 0.5,
                      ),
                      SizedBox(
                        width: Get.width / 3,
                      ),
                      const Text(
                        "cart ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sans',
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: Get.height / 1.45,
                  child: GetBuilder<CartControllerImp>(
                    builder: (controller) {
                      return Handlingdataview(
                        statusrequest: controller.statusrequest,
                        widget: ListView(
                          children: [
                            ...List.generate(controllercart.cartviewdata.length,
                                (index) {
                              return CustomcartItems(
                                onpressminus: () async {
                                  await controllercart.removefromcart(
                                      controllercart
                                          .cartviewdata[index].itemId!);
                                  await controllercart.refreshcartpage();
                                },
                                onpressplus: () async {
                                  await controllercart.addtocart(controllercart
                                      .cartviewdata[index].itemId!);
                                  await controllercart.refreshcartpage();
                                },
                                itemname: controllercart
                                    .cartviewdata[index].itemName!,
                                itemprice: controllercart
                                    .cartviewdata[index].itemPrice!,
                                itemtotalcount: controllercart
                                    .cartviewdata[index].itemcount!,
                                imageurl:
                                    "${Applink.items}/${controllercart.cartviewdata[index].itemImage!}",
                              );
                            })
                          ],
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
