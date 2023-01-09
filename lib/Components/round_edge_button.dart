import 'package:flutter/material.dart';
import 'dart:math';

class RoundedEdgeButton extends StatelessWidget {
  const RoundedEdgeButton(
      {Key? key,
      this.buttonIcon = Icons.arrow_forward,
      this.buttonIconColor = const Color(0xFF016AFA),
      this.iconRotation = 180,
      this.buttonColor = const Color(0xFFE4F1FE),
      this.height = 28,
      this.width = 28,
      this.iconSize = 15})
      : super(key: key);

  final IconData? buttonIcon;
  final Color? buttonIconColor;
  final double? iconRotation;
  final Color? buttonColor;
  final double? height;
  final double? width;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Transform.rotate(
        angle: 315 * pi / iconRotation!,
        child: Icon(
          buttonIcon,
          color: buttonIconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
