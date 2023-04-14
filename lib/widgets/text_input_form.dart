import 'package:flutter/material.dart';

import 'package:book_manager_app/constants.dart';

class IconInputField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final bool obscureText;

  const IconInputField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.textInputType,
      required this.textEditingController,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ]),
      child: TextField(
        obscureText: obscureText,
        controller: textEditingController,
        keyboardType: textInputType,
        style: const TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: const Color(0xFFFFAFCC),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }
}
