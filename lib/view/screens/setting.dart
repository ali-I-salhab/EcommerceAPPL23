import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:ecommerceapp/core/constants/imageassets.dart';
import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                    height: Get.width / 2,
                    // width: ,

                    decoration: BoxDecoration(
                        gradient: LinearGradient(stops: [
                          1,
                          10
                        ], colors: [
                          AppColors.primarycolor,
                          AppColors.primarycolor.withOpacity(0.7)
                        ]),
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        // borderRadius: BorderRadius.only(
                        //     topRight: Radius.circular(40.0),
                        //     bottomRight: Radius.circular(40.0),
                        //     topLeft: Radius.circular(40.0),
                        //     bottomLeft: Radius.circular(40.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              spreadRadius: 1,
                              blurRadius: 5),
                        ],
                        border: Border.symmetric()
                        // Border(bottom: BorderSide(color: Colors.red, width: 10)),
                        )),
                Positioned(
                    top: 142,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0, 2),
                              spreadRadius: 1,
                              blurRadius: 5),
                        ],
                        borderRadius: BorderRadius.circular(160),
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                  top: 150,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Image.asset(ImageAssets.logoauth),
                  ),
                ),
                const Positioned(
                  top: 10,
                  child: Text(
                    "Setting",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.width / 4,
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: null,
                    title: Text("Notification"),
                    trailing: Switch(value: true, onChanged: (val) {}),
                  ),
                  const ListTile(
                    onTap: null,
                    title: Text("contact us"),
                    trailing: Icon(Icons.phone),
                  ),
                  const ListTile(
                    onTap: null,
                    title: Text("about us"),
                    trailing: Icon(Icons.cabin),
                  ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoutes.AddressView);
                    },
                    title: Text("Change adress"),
                    trailing: Icon(Icons.home_max_outlined),
                  ),
                  const ListTile(
                    onTap: null,
                    title: Text("Logout"),
                    trailing: Icon(Icons.logout),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
