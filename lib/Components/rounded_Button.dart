import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      this.buttonIcon = Icons.arrow_forward_ios,
      this.buttonColor = 0xFF6A6C8E, this.onPressed})
      : super(key: key);

  final IconData? buttonIcon;
  final int? buttonColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Flexible(
        child: Container(
          height: 28,
          width: 28,
          decoration: const BoxDecoration(
            color: Color(0xFFEBEFF3),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Flexible(
            child: Icon(
              buttonIcon,
              color: Color(buttonColor!),
              size: 15,
            ),
          ),
        ),
      ),
    );
  }
}
