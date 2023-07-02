import 'package:ecommerceapp/controller/home_page_controller.dart';
import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import '../../linkapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    return WillPopScope(
      onWillPop: alertexitpp,
      child: Scaffold(
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Find products",
                            fillColor: AppColors.grey,
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(17))),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(17)),
                    padding: EdgeInsets.all(7),
                    margin: EdgeInsets.only(left: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          size: 35,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    child: ListTile(
                      title: Text(
                        'Summer Surprise',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        'cash back 20%',
                        style: TextStyle(fontSize: 33),
                      ),
                    ),
                    // margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(15)),
                    width: Get.width,
                    height: 200,
                  ),
                  Positioned(
                      right: -45,
                      top: -30,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffFF5000),
                            borderRadius: BorderRadius.circular(160)),
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 400,
                height: 70,
                color: Color.fromARGB(22, 207, 8, 91),
                child: ListView.separated(
                    separatorBuilder: (context, i) {
                      return SizedBox(
                        width: 100,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      print(
                          "${Applink.categories}/${controller.categories[index]["categories_image"]}");
                      return Container(
                        color: Colors.green,
                        height: 100,
                        width: 100,
                        child: SvgPicture.network(
                          "${Applink.categories}/${controller.categories[index]["categories_image"]}",
                          height: 50,
                          width: 50,
                        ),
                      );
                    }),
              )
            ],
          ),
        )),
      ),
    );
  }
}
