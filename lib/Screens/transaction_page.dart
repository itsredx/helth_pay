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

  late int selectedColor = 0xFF016BFB;
  late int notSelectedColor = 0xFFEBEFF3;

  int currentSelectionByPayment = 0;
  int currentSelectionByDate = 0;




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
                            return  BottomSheetContainer(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25)),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            children: const [
                                              Text(
                                                'close',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              Icon(
                                                Icons.close_rounded,
                                                color: Colors.grey,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text('Filter by Payment'),
                                    Flexible(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 4.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  currentSelectionByPayment = 0;
                                                });
                                              },
                                              child: Container(
                                                height: 30,
                                                width: 100,
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal: 11,
                                                    vertical: 6),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      6),
                                                  color: currentSelectionByPayment == 0 ? Color(selectedColor) : Color(notSelectedColor),
                                                ),
                                                child:  Center(
                                                  child: Flexible(
                                                    child: Text(
                                                      'All Transactions',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: currentSelectionByPayment == 0 ? Colors.white : Colors.black45,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          // const SizedBox(width: 10,),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    currentSelectionByPayment = 1;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 11,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                    color: currentSelectionByPayment == 1 ? Color(selectedColor) : Color(notSelectedColor),
                                                  ),
                                                  child:  Center(
                                                      child: Text(
                                                        'Credit',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: currentSelectionByPayment == 1 ? Colors.white : Colors.black45,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    currentSelectionByPayment = 3;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 11,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                    color: currentSelectionByPayment == 3 ? Color(selectedColor) : Color(notSelectedColor),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'Debit',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color: currentSelectionByPayment == 3 ? Colors.white : Colors.black45,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('Filter by Date'),
                                    Flexible(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    currentSelectionByDate = 0;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 11,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                    color: currentSelectionByDate == 0 ? Color(selectedColor) : Color(notSelectedColor),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'This week',
                                                        style: TextStyle(
                                                          fontSize: 9,
                                                          fontWeight: FontWeight.w500,
                                                          color: currentSelectionByDate == 0 ? Colors.white : Colors.black45,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    currentSelectionByDate = 1;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 11,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                    color: currentSelectionByDate == 1 ? Color(selectedColor) : Color(notSelectedColor),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'This month',
                                                        style: TextStyle(
                                                          fontSize: 8,
                                                          fontWeight: FontWeight.w500,
                                                          color: currentSelectionByDate == 1 ? Colors.white : Colors.black45,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4),
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    currentSelectionByDate = 3;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 11,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        6),
                                                    color: currentSelectionByDate == 3 ? Color(selectedColor) : Color(notSelectedColor),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        'Last 90 days',
                                                        style: TextStyle(
                                                          fontSize: 8,
                                                          fontWeight: FontWeight.w500,
                                                          color: currentSelectionByDate == 3 ? Colors.white : Colors.black45,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text('Choose date range'),
                                    Flexible(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 4.0),
                                              child: Container(
                                                height: 30,
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal: 8,
                                                    vertical: 8),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      6),
                                                  color:
                                                  const Color(0xFFEBEFF3),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: const [
                                                    Text(
                                                      'From',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      size: 15,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: Container(
                                                height: 30,
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal: 8,
                                                    vertical: 8),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      6),
                                                  color:
                                                  const Color(0xFFEBEFF3),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: const [
                                                    Text(
                                                      'To',
                                                      style: TextStyle(
                                                          fontSize: 10),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      size: 15,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const BottomButton(
                                        buttonTitle: 'Apply filters'),
                                  ],
                                ),
                              ),
                            );
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


