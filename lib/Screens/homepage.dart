import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(kUserName),
                    const Text('hello description'),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.5),
                    child: Icon(Icons.print_outlined, color: Colors.white, size: 20,),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF016BFB),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Wallet Balance', style: kCardTextStyle,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: const [
                                          SizedBox(height: 5,),
                                          Text('N', style: kCardTextStyle,),
                                        ],
                                      ),
                                      Text(kWalletBalance, style: kWalletBalanceTextStyle,),
                                    ],
                                  ),
                                  const SizedBox(height: 30,),
                                ],
                              ),
                              const Text('View Transaction >', style: kCardTextStyle,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: 250,
                        child: const Center(
                          child: Text('Card 2'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: 250,
                        child: const Center(
                          child: Text('Card 3'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 320,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                              Text('N21,650', style: TextStyle(
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
                              Text('N50,000', style: TextStyle(
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
                              Text('N50,000', style: TextStyle(
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
                              Text('N60,000', style: TextStyle(
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
                              Text('Sarki Abdulkadir'),
                              Text('N60,000', style: TextStyle(
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
                              Text('Amina Abba'),
                              Text('N200,000', style: TextStyle(
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
                              Text('Hamisu Abba Isa'),
                              Text('N10.650', style: TextStyle(
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
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                              Text('N21,650', style: TextStyle(
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
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(

                    color: Colors.white,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                Text('N21,650', style: TextStyle(
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
                        const SizedBox(height: 8,),
                        const Divider(
                          color: Color(0xFFDDE3EC),
                          height: 0,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        const SizedBox(height: 8,),
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
                                Text('N50,000', style: TextStyle(
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
              ),
            ],
          ),

        ],
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
