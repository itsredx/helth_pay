import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.buttonTitle,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(vertical: 15),
    this.color = const Color(0xFF016BFB),
  }) : super(key: key);

  final String buttonTitle;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: padding, //
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(3), color: color),
        child: Center(
            child: Text(
          buttonTitle,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
