import 'package:flutter/material.dart';
import 'package:helth_pay/Components/round_edge_button.dart';
import 'package:helth_pay/Components/rounded_Button.dart';
import '../Screens/transaction_receipt_page.dart';
import '../constants.dart';
import '../home.dart';


class BlueTransactionTile extends StatelessWidget {
  const BlueTransactionTile({
    Key? key,
    required this.transactionName,
    required this.transactionTime,
    required this.transactionAmount,
    required this.transactionDate,
  }) : super(key: key);

  final String transactionName;
  final String transactionTime;
  final String transactionAmount;
  final String transactionDate;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedEdgeButton(
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transactionName),
            Text(
              '$transactionTime   |   $transactionAmount',
              style: const TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              currentScreen =  TransactionReceipt(
                  transactionName: transactionName,
                  transactionTime: transactionTime,
                  transactionAmount: transactionAmount,
                  transactionDate: transactionDate);
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


class RedTransactionTile extends StatelessWidget {
  const RedTransactionTile({
    Key? key,
    required this.transactionName,
    required this.transactionTime,
    required this.transactionAmount,
    required this.transactionDate,
  }) : super(key: key);

  final String transactionName;
  final String transactionTime;
  final String transactionAmount;
  final String transactionDate;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RoundedEdgeButton(
          buttonColor: Color(0xFFFAE6E7),
          iconRotation: 6.2,
          buttonIconColor: Color(0xFFF2B5B2),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(transactionName),
            Text(
              '$transactionTime   |   $transactionAmount',
              style: const TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              currentScreen =  TransactionReceipt(
                  transactionName: transactionName,
                  transactionTime: transactionTime,
                  transactionAmount: transactionAmount,
                  transactionDate: transactionDate);
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