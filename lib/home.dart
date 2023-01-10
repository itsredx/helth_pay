import 'package:flutter/material.dart';
import 'package:helth_pay/Screens/dashboard_page.dart';
import 'package:helth_pay/Screens/profile_page.dart';
import 'package:helth_pay/Screens/transaction_page.dart';
import 'Screens/payment_page.dart';
import 'Screens/print_page.dart';
import 'Screens/transaction_receipt_page.dart';
import 'constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screens = [
    const DashboardPage(),
    const TransactionPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const DashboardPage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      child:
                      SvgPicture.asset('lib/icons/home-Regular.svg',
                        semanticsLabel: 'Dashboard',
                        color: currentTab == 0 ? Color(myBlue) : Colors.grey,),
                    ),

                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 0 ? Color(myBlue) : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const TransactionPage();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Column(
                        children: [
                          SvgPicture.asset('lib/icons/arrow-up-Regular.svg',
                            color: currentTab == 1 ? Color(myBlue) : Colors.grey,),
                          SvgPicture.asset('lib/icons/arrow-down-Regular.svg',
                            color: currentTab == 1 ? Color(myBlue) : Colors.grey,),
                        ],
                      ),
                    ),
                    Text(
                      'Transaction',
                      style: TextStyle(
                          color: currentTab == 1 ? Color(myBlue) : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const ProfilePage();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      child:
                      SvgPicture.asset('lib/icons/user-Regular.svg',
                        color: currentTab == 3 ? Color(myBlue) : Colors.grey,),
                    ),

                    Text(
                      'Profile',
                      style: TextStyle(
                          color: currentTab == 3 ? Color(myBlue) : Colors.grey),
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
