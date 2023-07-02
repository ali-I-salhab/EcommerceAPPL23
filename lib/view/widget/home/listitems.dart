import 'package:ecommerceapp/controller/home_page_controller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/data/model/itemsmodel.dart';
import 'package:ecommerceapp/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsList extends GetView<HomepageControllerImp> {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 120,
      // color: AppColors.black,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return Items(
              itemsModel: ItemsModel.fromJson(controller.items[index]),
            );
          }),
    );
  }
}

class Items extends StatelessWidget {
  final ItemsModel itemsModel;
  const Items({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Image.network("${Applink.items}/${itemsModel.itemImage}"),
        ),
        Positioned(
            right: 0,
            child: Container(
              width: 120,
              height: 120,
              color: AppColors.black.withOpacity(0.3),
            ))
      ],
    );
  }
}
