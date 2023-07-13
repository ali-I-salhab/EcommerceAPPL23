import 'package:ecommerceapp/core/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.AddressAdd);
        },
        child: const Text("+"),
      ),
      appBar: AppBar(
        title: Text("Addresses"),
      ),
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
