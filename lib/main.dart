import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(title: 'Hauwa Dalhatu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int transactionButtonColor = 0xFF016BFB;
  int commissionButtonColor = 0xFFFFFFFF;
  Color transactionTextColor = Colors.white;
  Color commissionTextColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 51,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: const FaIcon(Icons.home_outlined, color: Color(0xFF869DBD),), onPressed: () {},),
                  const Text('Home', style: TextStyle(fontSize: 10, color: Color(0xFF869DBD),),),
                ],
              ),
            ),
            SizedBox(
              height: 51,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: const FaIcon(Icons.compare_arrows_rounded, color: Color(0xFF006BFA),), onPressed: () {},),
                  const Text('Transaction',style: TextStyle(fontSize: 10, color: Color(0xFF006BFA),),),
                ],
              ),
            ),
            SizedBox(
              height: 51,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: const FaIcon(Icons.inbox_outlined, color: Color(0xFF869DBD),), onPressed: () {},),
                  const Text('Agents',style: TextStyle(fontSize: 10, color: Color(0xFF869DBD),),),
                ],
              ),
            ),
            SizedBox(
              height: 51,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: const FaIcon(Icons.person_outline_rounded, color: Color(0xFF869DBD),), onPressed: () {},),
                  const Text('Profile',style: TextStyle(fontSize: 10, color: Color(0xFF869DBD),),),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                transactionButtonColor = 0xFF016BFB;
                                commissionButtonColor = 0xFFFFFFFF;
                                transactionTextColor = Colors.white;
                                commissionTextColor = Colors.black;
                                // if(transactionHistory == true){
                                // setState(() {
                                //   transactionButtonColor = 0xFF016BFB;
                                // });}else if (transactionHistory == false){
                                //   setState(() {
                                //     transactionButtonColor = 0xFFFFFFFF;
                                //   });
                                // }

                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17.8, vertical: 10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: const Color(0xFF016BFB)),
                                  color: Color(transactionButtonColor),
                                  borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(5))),
                              child:
                                  Center(child: Text('Transaction History', style: TextStyle(fontSize: 13, color: transactionTextColor),)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                transactionButtonColor = 0xFFFFFFFF;
                                commissionButtonColor = 0xFF016BFB;
                                transactionTextColor = Colors.black;
                                commissionTextColor = Colors.white;
                                // if(transactionHistory == true){
                                //   setState(() {
                                //     transactionHistory = false;
                                //     transactionButtonColor = 0xFFFFFFFF;
                                //     commissionButtonColor = 0xFF016BFB;
                                //   });
                                // }else if(transactionHistory == false){
                                //   setState(() {
                                //     commissionButtonColor = 0xFF016BFB;
                                //   });
                                // }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17.7, vertical: 10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: const Color(0xFF016BFB)),
                                  color: Color(commissionButtonColor),
                                  borderRadius: const BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                              child:
                                  Center(child: Text('Commission History',style: TextStyle(fontSize: 13, color: commissionTextColor),)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
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
                                    Text('N21,650', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                                    Text('N50,000', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                                    Text('N50,000', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                                    Text('N60,000', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                                    Text('N60,000', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                                    Text('N200,000', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                                    Text('N10.650', style: TextStyle(fontSize: 12, color: Color(0xFFBAC6D8)),)
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 64),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 33,
                  decoration: const BoxDecoration(
                    color: Color(0xFF016BFB),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(child: Text('1', style: TextStyle(color: Colors.white),)),
                ),
                const SizedBox(width: 6,),
                Container(
                  height: 30,
                  width: 33,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(child: Text('2')),
                ),
                const SizedBox(width: 6,),
                Container(
                  height: 30,
                  width: 33,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(child: Text('3')),
                ),
                const SizedBox(width: 6,),
                Container(
                  height: 30,
                  width: 33,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(child: Text('...')),
                ),
                const SizedBox(width: 6,),
                Container(
                  height: 30,
                  width: 66,
                  decoration: const BoxDecoration(
                    color: Color(0xFF016BFB),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(child: Text('Next',style: TextStyle(color: Colors.white),)),
                ),
              ],
            ))
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
