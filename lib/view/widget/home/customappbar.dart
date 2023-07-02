import 'package:ecommerceapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(17))),
            )),
        Container(
          decoration: BoxDecoration(
              color: AppColors.grey, borderRadius: BorderRadius.circular(17)),
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                size: 35,
              )),
        )
      ],
    );
  }
}
