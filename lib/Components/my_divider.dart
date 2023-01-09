import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Divider(
        color: Color(0xFFDDE3EC),
        height: 0,
        thickness: 1,
        indent: 0,
        endIndent: 0,
      ),
    );
  }
}