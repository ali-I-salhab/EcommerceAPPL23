import 'package:ecommerceapp/controller/home_page_controller.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    return WillPopScope(
      onWillPop: alertexitpp,
      child: Scaffold(
        appBar: AppBar(
          title: Text('homepage'),
        ),
        body: Column(
          children: [
            Center(
              child: Text(controller.initiadata()),
            )
          ],
        ),
      ),
    );
  }
}
