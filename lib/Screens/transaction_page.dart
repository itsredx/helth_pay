import 'package:flutter/material.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import 'package:helth_pay/Screens/bottom_sheet.dart';
import 'package:helth_pay/Screens/transaction_receipt_page.dart';
import 'package:helth_pay/home.dart';
import 'dart:math';

import '../Components/round_edge_button.dart';
import '../Components/rounded_Button.dart';
import '../Components/transaction_tiles.dart';
import '../constants.dart';
import 'dashboard_page.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int transactionButtonColor = 0xFF016BFB;
  int commissionButtonColor = 0xFFFFFFFF;
  Color transactionTextColor = Colors.white;
  Color commissionTextColor = Colors.black;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = const DashboardPage();
              currentTab = 0;
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return  PageStorage(bucket: bucket, child: const Home() );
              }));
            });
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Transaction History',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  right: 15, left: 15, top: 15, bottom: 15),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.search,
                              color: Color(0xFFBAC6D8),
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                textAlignVertical: TextAlignVertical.top,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search by name, Amount, Date',
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFFBAC6D8))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const BottomSheetContainer();
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 8.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                        //width: 14,
                        child: Center(
                          child: SizedBox(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/preference.png',
                              color: Colors.grey,
                            ),
                          ),
                          // child: Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: const [
                          //     Icon(Icons.toggle_off_outlined,
                          //         size: 15, color: Color(0xFFBAC6D8)),
                          //     Icon(Icons.toggle_on_outlined,
                          //         size: 15, color: Color(0xFFBAC6D8)),
                          //   ],
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 194,
              margin: const EdgeInsets.only(bottom: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    TransactionByDate(
                      transactionDate: kTransactionDate,
                    ),
                    const TransactionByDate(
                      transactionDate: '13 Nov 2021',
                    ),
                    const TransactionByDate(
                      transactionDate: '25 Jan 2021',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionByDate extends StatelessWidget {
  const TransactionByDate({
    Key? key,
    required this.transactionDate,
  }) : super(key: key);

  final String transactionDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 250,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      transactionDate,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFFBAC6D8)),
                    ),
                    BlueTransactionTile(
                      transactionName: Data['Name'],
                      transactionTime: Data['Time'],
                      transactionAmount: Data['Amount'],
                      transactionDate: transactionDate,
                    ),
                    const Divider(
                      color: Color(0xFFDDE3EC),
                      height: 0,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    BlueTransactionTile(
                      transactionName: 'Abdulahi Musa',
                      transactionTime: '10:00 AM',
                      transactionAmount: 'N65,650',
                      transactionDate: transactionDate,
                    ),
                    const Divider(
                      color: Color(0xFFDDE3EC),
                      height: 0,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    RedTransactionTile(
                      transactionName: 'Isa Ismail',
                      transactionTime: '08:00 AM',
                      transactionAmount: 'N50,650',
                      transactionDate: transactionDate,
                    ),
                    const Divider(
                      color: Color(0xFFDDE3EC),
                      height: 0,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    BlueTransactionTile(
                      transactionName: 'Aminu Abubakar',
                      transactionTime: '06:00 AM',
                      transactionAmount: 'N200,650',
                      transactionDate: transactionDate,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


