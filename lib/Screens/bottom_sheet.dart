import 'package:flutter/material.dart';
import '../Components/bottom_button.dart';


class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      color: const Color.fromRGBO(108, 110, 111, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 15.0),
        child: widget.child,
      ),
    );
  }
}
