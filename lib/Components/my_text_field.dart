import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key, required this.hintText, this.prefixIcon, this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54, width: 1.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54, width: 2.0),
            ),
            hintText: hintText,
            hintStyle:
            const TextStyle(fontSize: 15, color: Color(0xFFBAC6D8))),
      ),
    );
  }
}
