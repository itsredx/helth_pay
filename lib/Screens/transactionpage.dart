import 'package:flutter/material.dart';
import 'dart:math';

import '../constants.dart';

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
        leading: IconButton(onPressed: (){
        },
        icon: const Icon(Icons.arrow_back, color: Colors.black,),
        ),
        title: const Text('Transaction History', style: TextStyle(color: Colors.black, fontSize: 15),),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
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
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.search, color: Color(0xFFBAC6D8), size: 20,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: TextField(
                                textAlignVertical: TextAlignVertical.top,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search by name, Amount, Date',
                                  hintStyle: TextStyle(fontSize: 15, color: Color(0xFFBAC6D8))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      //width: 14,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.toggle_off_outlined, size: 15, color: Color(0xFFBAC6D8)),
                            Icon(Icons.toggle_on_outlined, size: 15, color: Color(0xFFBAC6D8)),
                          ],
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
                    Container(
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
                                  const Text('14 Nov 2021',style: TextStyle(
                                      fontSize: 12, color: Color(0xFFBAC6D8)),),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Usman Muhammad'),
                                          Text('11:00 AM   |   N21,650', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Abdulahi Musa'),
                                          Text('11:00 AM   |   N50,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Isa Ismail'),
                                          Text('11:00 AM   |   N50,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Aminu Abubakar'),
                                          Text('11:00 AM   |   N60,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      margin: const EdgeInsets.all(15),
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
                                  const Text('14 Nov 2021',style: TextStyle(
                                      fontSize: 12, color: Color(0xFFBAC6D8)),),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Usman Muhammad'),
                                          Text('11:00 AM   |   N21,650', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Abdulahi Musa'),
                                          Text('11:00 AM   |   N50,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Isa Ismail'),
                                          Text('11:00 AM   |   N50,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Aminu Abubakar'),
                                          Text('11:00 AM   |   N60,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      margin: const EdgeInsets.all(15),
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
                                  const Text('14 Nov 2021',style: TextStyle(
                                      fontSize: 12, color: Color(0xFFBAC6D8)),),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Usman Muhammad'),
                                          Text('11:00 AM   |   N21,650', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Abdulahi Musa'),
                                          Text('11:00 AM   |   N50,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Isa Ismail'),
                                          Text('11:00 AM   |   N50,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Color(0xFFDDE3EC),
                                    height: 0,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Row(
                                    children: [
                                      roundEdgeButton,
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Aminu Abubakar'),
                                          Text('11:00 AM   |   N60,000', style: TextStyle(
                                              fontSize: 12, color: Color(0xFFBAC6D8)),)
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: roundedButton,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //     margin: const EdgeInsets.only(top: 10, bottom: 10),
            //     //padding: const EdgeInsets.symmetric(horizontal: 44),
            //     child: Row(mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Container(
            //           height: 30,
            //           width: 33,
            //           decoration: const BoxDecoration(
            //             color: Color(0xFF016BFB),
            //             borderRadius: BorderRadius.all(Radius.circular(4)),
            //           ),
            //           child: const Center(child: Text(
            //             '1', style: kCurrentTransactionHistoryPage,)),
            //         ),
            //         const SizedBox(width: 6,),
            //         Container(
            //           height: 30,
            //           width: 25,
            //           decoration: const BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.all(Radius.circular(4)),
            //           ),
            //           child: const Center(child: Text('2', style: kTransactionPageRefrence,)),
            //         ),
            //         const SizedBox(width: 6,),
            //         Container(
            //           height: 30,
            //           width: 25,
            //           decoration: const BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.all(Radius.circular(4)),
            //           ),
            //           child: const Center(child: Text('3', style: kTransactionPageRefrence)),
            //         ),
            //         const SizedBox(width: 6,),
            //         Container(
            //           height: 30,
            //           width: 25,
            //           decoration: const BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.all(Radius.circular(4)),
            //           ),
            //           child: const Center(child: Text('...', style: kTransactionPageRefrence,)),
            //         ),
            //         const SizedBox(width: 6,),
            //         Container(
            //           height: 30,
            //           width: 50,
            //           decoration: const BoxDecoration(
            //             color: Color(0xFF016BFB),
            //             borderRadius: BorderRadius.all(Radius.circular(4)),
            //           ),
            //           child: const Center(child: Text(
            //               'Next', style: kCurrentTransactionHistoryPage),
            //           ),)
            //       ],
            //     ))
          ],
        ),
      ),
    );
  }

  Container get roundEdgeButton {
    return Container(
      height: 28,
      width: 28,
      decoration: const BoxDecoration(
        color: Color(0xFFE4F1FE),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Transform.rotate(
        angle: 315 * pi / 180,
        child: const Icon(
          Icons.arrow_forward,
          color: Color(0xFF016AFA),
          size: 15,
        ), //const FaIcon(FontAwesomeIcons.squareArrowUpRight, size: 35, color: Color(0xFFE4F1FE),)
      ),
    );
  }

  Container get roundedButton {
    return Container(
      height: 28,
      width: 28,
      decoration: const BoxDecoration(
        color: Color(0xFFEBEFF3),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: const Icon(
        Icons.arrow_forward_ios,
        color: Color(0xFF6A6C8E),
        size: 15,
      ),
    );
  }
}
