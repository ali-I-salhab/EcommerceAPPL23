import 'package:ecommerceapp/controller/homescreencontroller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/view/widget/home/customappbatbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      bool val = true;
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primarycolor,
          onPressed: null,
          child: Icon(Icons.shopping_basket_outlined),
        ),
        // backgroundColor: Colors.amber,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
              children: List.generate(controller.widget.length + 1, (index) {
            int i = index > 2 ? index - 1 : index;
            if (i == 2 && val) {
              val = false;
              return Spacer();
            } else {
              return CustomAppBarButton(
                  isactive: controller.currentpage == i ? true : false,
                  onPressed: () {
                    controller.changepage(i);
                  },
                  title: controller.titleappbar[i],
                  icon: Icons.home);
            }
          })),
        ),
        body: controller.widget[controller.currentpage],
      );
    });
  }
}
