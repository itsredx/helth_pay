import 'package:flutter/material.dart';
import 'package:helth_pay/Components/round_edge_button.dart';


class ContactUsTile extends StatelessWidget {
  const ContactUsTile({
    Key? key, required this.tileTitle, required this.tileIcon, required this.tileSubtitle,
  }) : super(key: key);

  final String tileTitle;
  final IconData tileIcon;
  final String tileSubtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              RoundedEdgeButton(
                buttonIcon: tileIcon,
                iconRotation: 39.4,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey
                    ),
                  ),
                  Text(tileSubtitle),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}