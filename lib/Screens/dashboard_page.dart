import 'package:helth_pay/Components/transaction_tiles.dart';
import 'package:helth_pay/Screens/payment_page.dart';
import 'package:helth_pay/Screens/print_page.dart';
import 'package:flutter/material.dart';
import 'package:helth_pay/Screens/transaction_page.dart';
import 'package:helth_pay/Components/my_divider.dart';
import 'package:helth_pay/home.dart';
import '../constants.dart';
import 'package:helth_pay/Components/transaction_data_tile.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _pageController = PageController();
  final List<String> _cards = ['Card 1', 'Card 2', 'Card 3'];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome back,',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        kUserName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentScreen = const PrintPage();
                      currentTab = 0;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PageStorage(bucket: bucket, child: Home());
                      }));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(myBlue),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.5),
                      child: Icon(
                        Icons.print_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: SizedBox(
                      height: 120,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: _cards.length,
                        itemBuilder: (context, index) {
                          if (_cards[index] == 'Card 1') {
                            return Card(
                              color: Color(myBlue),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Wallet Balance',
                                          style: kCardTextStyle,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: const [
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'N',
                                                  style: kCardTextStyle,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              kWalletBalance,
                                              style: kWalletBalanceTextStyle,
                                            ),
                                          ],
                                        ),
                                        // const SizedBox(height: 30,),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentScreen =
                                              const TransactionPage();
                                          currentTab = 1;
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return PageStorage(
                                                bucket: bucket, child: Home());
                                          }));
                                        });
                                      },
                                      child: Row(
                                        children: const [
                                          Text(
                                            'View Transaction ',
                                            style: kCardTextStyle,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 13,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // child: Center(
                              //   child: Text('${_cards[index]} one'),
                              // ),
                            );
                          } else if (_cards[index] == 'Card 2') {
                            return Card(
                              color: Colors.blueGrey,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Total daily transactions',
                                          style: kCardTextStyle,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: const [
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'N',
                                                  style: kCardTextStyle,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              kTotalDailyTransaction,
                                              style: kWalletBalanceTextStyle,
                                            ),
                                          ],
                                        ),
                                        // const SizedBox(height: 30,),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentScreen =
                                              const TransactionPage();
                                          currentTab = 1;
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return PageStorage(
                                                bucket: bucket, child: Home());
                                          }));
                                        });
                                      },
                                      child: Row(
                                        children: const [
                                          Text(
                                            'View More ',
                                            style: kCardTextStyle,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 13,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          return Card(
                            color: Colors.blueGrey,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Daily transaction Count',
                                        style: kCardTextStyle,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            kDailyTransactionCount,
                                            style: kWalletBalanceTextStyle,
                                          ),
                                        ],
                                      ),
                                      // const SizedBox(height: 30,),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentScreen = const TransactionPage();
                                        currentTab = 1;
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return PageStorage(
                                              bucket: bucket, child: Home());
                                        }));
                                      });
                                    },
                                    child: Row(
                                      children: const [
                                        Text(
                                          'View More ',
                                          style: kCardTextStyle,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 13,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // child: Center(
                            //   child: Text('${_cards[index]} three'),
                            // ),
                          );
                        },
                        onPageChanged: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_cards.length, (index) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Color(myBlue)
                              : Colors.blueGrey,
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentScreen = const PaymentPage();
                          currentTab = 0;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PageStorage(bucket: bucket, child: Home());
                          }));
                        });
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(myBlue),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text(
                            'Make Payment',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Transactions',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                currentScreen = const TransactionPage();
                                currentTab = 1;
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return PageStorage(
                                      bucket: bucket, child: Home());
                                }));
                              });
                            },
                            child: const Text(
                              'View all',
                              style: TextStyle(color: Colors.grey),
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                    color: Colors.white,
                    //height: 450,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '14 Nov 2021',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        BlueTransactionData(
                          transactionAmount: 'N21,650',
                          transactionName: 'Usman Muhammad',
                        ),
                        MyDivider(),
                        BlueTransactionData(
                            transactionName: 'Abdulahi Musa',
                            transactionAmount: 'N50,000'),
                        MyDivider(),
                        RedTransactionData(
                            transactionName: 'Isa Ismail',
                            transactionAmount: 'N50,000'),
                        MyDivider(),
                        BlueTransactionData(
                            transactionName: 'Aminu Abubakar',
                            transactionAmount: 'N60,000'),
                        MyDivider(),
                        BlueTransactionData(
                            transactionName: 'Sarki Abdulkadir',
                            transactionAmount: 'N60,000'),
                        MyDivider(),
                        BlueTransactionData(
                            transactionName: 'Amina Abba',
                            transactionAmount: 'N200,000'),
                        MyDivider(),
                        BlueTransactionData(
                            transactionName: 'Hamisu Abba Isa',
                            transactionAmount: 'N10,650'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '14 Nov 2021',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                      BlueTransactionData(
                        transactionAmount: 'N21,650',
                        transactionName: 'Usman Muhammad',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '14 Nov 2021',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        BlueTransactionData(
                          transactionAmount: 'N21,650',
                          transactionName: 'Usman Muhammad',
                        ),
                        MyDivider(),
                        BlueTransactionData(
                            transactionName: 'Abdulahi Musa',
                            transactionAmount: 'N50,000'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
