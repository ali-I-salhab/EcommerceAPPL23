import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final IconData icon;
  final String hint;
  final TextEditingController? mycontroller;
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.icon,
      required this.mycontroller,
      required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          label: Text('$label'),
          suffixIcon: Icon(icon),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 10),
          labelStyle: const TextStyle(color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
