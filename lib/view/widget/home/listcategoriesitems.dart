import 'package:ecommerceapp/controller/home_page_controller.dart';
import 'package:ecommerceapp/controller/items_controller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/data/model/categoriesmodel.dart';
import 'package:ecommerceapp/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 100,
      height: 80,
      child: ListView.separated(
          separatorBuilder: (context, i) {
            return const SizedBox(
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          itemBuilder: (context, index) {
            // print(
            //     "${Applink.categories}/${controller.categories[0]["categories_image"]}");
            return Categories(
              // ontap: () {
              //   controller.gotoitemspage(index, controller.categories);
              // },
              categoriesModel:
                  CategoriesModel.fromJson(controller.categories[index]),
              activecat: index,
            );
          }),
    );
  }
}

class Categories extends StatelessWidget {
  final CategoriesModel categoriesModel;
  final int activecat;
  const Categories(
      {super.key, required this.categoriesModel, required this.activecat});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsControllerImp>(
      builder: (controller) => Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: AppColors.grey,
        ),
        height: 20,
        child: InkWell(
          onTap: () {
            controller.ontapcat(activecat);
          },
          child: Column(
            children: [
              Text(
                '${categoriesModel.categoriesName}',
                style: TextStyle(
                    fontSize: 15,
                    color: controller.selectedcat == activecat
                        ? AppColors.primarycolor
                        : AppColors.black),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                    color: controller.selectedcat == activecat
                        ? AppColors.primarycolor
                        : Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
