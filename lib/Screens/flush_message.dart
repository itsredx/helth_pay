import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';


class FlushMessage extends StatelessWidget {
  const FlushMessage({Key? key, required this.message, required this.messageIcon}) : super(key: key);

  final String message;
  final IconData messageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Flushbar(
        duration: const Duration(seconds: 3),
        icon: Icon(messageIcon),
        message: message,
        borderRadius: BorderRadius.circular(4),
        backgroundColor: Colors.black54,
      ),
    );
  }
}
