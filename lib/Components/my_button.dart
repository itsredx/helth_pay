import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.buttonTitle,
    required this.buttonColor,
  }) : super(key: key);

  final Widget buttonTitle;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 2,
          child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: buttonColor, //Color(0xFFEBEFF3),
                borderRadius: BorderRadius.circular(8),
              ),
              // child: isIcon(buttonTitle!) ? myIcon : buttonTitle,
              child: Center(child: Flexible(child: buttonTitle))),
        ),
      ),
    );
  }
}