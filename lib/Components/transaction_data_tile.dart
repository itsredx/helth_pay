import 'package:flutter/material.dart';
import 'package:helth_pay/Components/round_edge_button.dart';
import 'package:helth_pay/Components/rounded_Button.dart';
import 'package:helth_pay/Screens/transaction_receipt_page.dart';

import '../Screens/transaction_page.dart';
import '../constants.dart';
import '../home.dart';

class BlueTransactionData extends StatefulWidget {
  const BlueTransactionData({
    Key? key,
    required this.transactionName,
    required this.transactionAmount, required this.transactionDate, required this.transactionTime,
  }) : super(key: key);

  final String transactionName;
  final String transactionAmount;
  final String transactionDate;
  final String transactionTime;

  @override
  State<BlueTransactionData> createState() => _BlueTransactionDataState();
}

class _BlueTransactionDataState extends State<BlueTransactionData> {
  @override
  Widget build(BuildContext context) {

    final String transactionName = widget.transactionName;
    final String transactionAmount = widget.transactionAmount;
    final String transactionDate = widget.transactionDate;
    final String transactionTime = widget.transactionTime;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          RoundedEdgeButton(),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.transactionName,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                widget.transactionAmount,
                style: const TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),
              )
            ],
          ),
          const Flexible(child: Expanded(child: SizedBox())),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = TransactionReceipt(transactionName: transactionName, transactionTime: transactionTime, transactionAmount: transactionAmount, transactionDate: transactionDate);
                    currentTab = 1;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PageStorage(bucket: bucket, child: Home());
                    }));
                  });
                },
                child: const RoundedButton()),
          ),
        ],
      ),
    );
  }
}

class RedTransactionData extends StatefulWidget {
  const RedTransactionData(
      {Key? key,
      required this.transactionName,
      required this.transactionAmount, required this.transactionTime, required this.transactionDate})
      : super(key: key);

  final String transactionName;
  final String transactionAmount;
  final String transactionTime;
  final String transactionDate;

  @override
  State<RedTransactionData> createState() => _RedTransactionDataState();
}

class _RedTransactionDataState extends State<RedTransactionData> {
  @override
  Widget build(BuildContext context) {
    final String transactionName = widget.transactionName;
    final String transactionAmount = widget.transactionAmount;
    final String transactionTime = widget.transactionTime;
    final String transactionDate = widget.transactionDate;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const RoundedEdgeButton(
            iconRotation: 6.2,
            buttonIconColor: Color(0xFFF2B5B2),
            buttonColor: Color(0xFFFAE6E7),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionName,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                transactionAmount,
                style: const TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),
              )
            ],
          ),
          const Flexible(child: Expanded(child: SizedBox())),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = TransactionReceipt(
                        transactionName: transactionName,
                        transactionTime: transactionTime,
                        transactionAmount: transactionAmount,
                        transactionDate: transactionDate);
                    currentTab = 1;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PageStorage(bucket: bucket, child: const Home());
                    }));
                  });
                },
                child: const RoundedButton()),
          ),
        ],
      ),
    );
  }
}
