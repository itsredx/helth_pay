import 'package:flutter/material.dart';
import 'package:helth_pay/Components/round_edge_button.dart';
import 'package:helth_pay/Components/rounded_Button.dart';
import 'package:helth_pay/Screens/printer_detail.dart';

import '../constants.dart';
import '../home.dart';



class PairedPrinter extends StatelessWidget {
  const PairedPrinter({
    Key? key,
    required this.printerName,
    required this.printerSerialNumber,
     this.transactionAmount,
     this.transactionDate,
  }) : super(key: key);

  final String printerName;
  final String printerSerialNumber;
  final String? transactionAmount;
  final String? transactionDate;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedEdgeButton(
          buttonIcon: Icons.print_outlined,
          iconRotation: 39.4,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(printerName),
            Text(
              '$printerSerialNumber',
              style: const TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              currentScreen =  PrinterDetails(
                printerName: printerName,
              );
              currentTab = 1;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PageStorage(bucket: bucket, child: Home());
              }));
            },
            child: const RoundedButton(),
          ),
        ),
      ],
    );
  }
}