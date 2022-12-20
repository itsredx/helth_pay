import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helth_pay/Screens/homepage.dart';
import 'package:helth_pay/Screens/profilepage.dart';
import 'package:helth_pay/Screens/transactionpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    TransactionPage(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEEF2),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState((){
                  currentScreen = HomePage();
                  currentTab = 0;});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home_rounded,
                        color: currentTab == 0 ? Colors.blue : Colors.grey),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 0 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState((){
                    currentScreen = TransactionPage();
                    currentTab = 1;});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.transfer_within_a_station_rounded,
                        color: currentTab == 1 ? Colors.blue : Colors.grey),
                    Text(
                      'Transaction',
                      style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState((){
                    currentScreen = ProfilePage();
                    currentTab = 3;});
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person_outline_rounded,
                        color: currentTab == 3 ? Colors.blue : Colors.grey),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: currentTab == 3 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
