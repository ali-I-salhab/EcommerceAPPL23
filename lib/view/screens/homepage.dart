import 'package:ecommerceapp/controller/home_page_controller.dart';
import 'package:ecommerceapp/core/class/handlingdataview.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/core/constants/imageassets.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:ecommerceapp/data/model/categoriesmodel.dart';
import 'package:ecommerceapp/view/widget/home/customappbar.dart';
import 'package:ecommerceapp/view/widget/home/customcardhome.dart';
import 'package:ecommerceapp/view/widget/home/customtitle.dart';
import 'package:ecommerceapp/view/widget/home/listcategories.dart';
import 'package:ecommerceapp/view/widget/home/listitems.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomepageControllerImp());
    return WillPopScope(
        onWillPop: alertexitpp,
        child: GetBuilder<HomepageControllerImp>(
          builder: (controller) {
            return Handlingdataview(
              statusrequest: controller.statusrequest,
              widget: SafeArea(
                  child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                child: ListView(
                  children: const [
                    CustomAppBar(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomCardHome(
                      title: "summer Surprise",
                      body: "30 % cashback",
                    ),
                    CustomTitle(
                      title: 'categories',
                    ),
                    ListCategories(),
                    CustomTitle(
                      title: 'Special products for you ',
                    ),
                    ItemsList(),
                    CustomTitle(
                      title: 'offers',
                    ),
                    ItemsList(),
                  ],
                ),
              )),
            );
          },
        ));
  }
}
