import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import 'package:helth_pay/Components/my_divider.dart';
import 'package:helth_pay/Screens/print_page.dart';
import 'package:helth_pay/Screens/transaction_page.dart';
import 'package:helth_pay/constants.dart';
import 'package:helth_pay/home.dart';

class TransactionReceipt extends StatefulWidget {
  const TransactionReceipt(
      {Key? key,
      required this.transactionName,
      required this.transactionTime,
      required this.transactionAmount,
      required this.transactionDate})
      : super(key: key);

  final String transactionName;
  final String transactionTime;
  final String transactionAmount;
  final String transactionDate;

  @override
  State<TransactionReceipt> createState() => _TransactionReceiptState();
}

class _TransactionReceiptState extends State<TransactionReceipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = TransactionPage();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            });
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'View Transaction',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 265,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.transactionName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  'Accommodation per Night (GENERAL)',
                                  style: kGreyTextStyle,
                                )
                              ],
                            ),
                            const BottomButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              buttonTitle: 'Paid',
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                    ),
                    const MyDivider(),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Amount',
                                style: kGreyTextStyle,
                              ),
                              Text(widget.transactionAmount),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Date',
                                style: kGreyTextStyle,
                              ),
                              Text(widget.transactionDate),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Reference',
                                style: kGreyTextStyle,
                              ),
                              const Text('wploPsPV'),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Transaction Type',
                                style: kGreyTextStyle,
                              ),
                              const Text('Bill Payment'),
                            ],
                          ),
                          const Flexible(
                              child: SizedBox(
                            width: 30,
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Service charge',
                                style: kGreyTextStyle,
                              ),
                              Text('N200'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cashier',
                                style: kGreyTextStyle,
                              ),
                              Text('Haladu Ibrahim'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Receipt Number',
                                style: kGreyTextStyle,
                              ),
                              Text('Mockerdref12789'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      height: 40,
                      child: const Center(
                        child: Text(
                          'Invoice number: INI3745',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        Flushbar(
                          icon: Icon(Icons.error_outline_outlined, color: Colors.white,),
                          message: 'Printing in progress, Please wait',
                          backgroundColor: Colors.black54,
                          borderRadius: BorderRadius.circular(5),
                        );
                        Flushbar(
                          icon: Icon(Icons.error_outline_outlined, color: Colors.white,),
                          message: 'Printing complete',
                          backgroundColor: Colors.black54,
                          borderRadius: BorderRadius.circular(5),
                        );
                      },
                    );
                  },
                  child: const BottomButton(buttonTitle: 'Print Receipt'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
