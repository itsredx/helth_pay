import 'package:flutter/material.dart';

import 'Screens/dashboard_page.dart';

Widget currentScreen = const DashboardPage();
int currentTab = 0;
String kWalletBalance = '3,000,000.85';
String kDailyTransactionCount = '36';
String kTotalDailyTransaction = '400,000.56';
String kTransactionDate = '14 Nov 2021';
final PageStorageBucket bucket = PageStorageBucket();
const kWalletBalanceTextStyle = TextStyle(fontSize: 25, color: Colors.white);
const kCardTextStyle = TextStyle(fontSize: 11, color: Colors.white);
const kCurrentTransactionHistoryPage = TextStyle(fontSize: 13, color: Colors.white);
const kTransactionPageReference = TextStyle(fontSize: 13,);
const kGreyTextStyle = TextStyle(fontSize: 10, color: Colors.grey);
const kCurrentCardLabel = Colors.grey;
String kTransactionTime = '11:00pm';
String kTransactionName = 'Muhammad ';
String kUserName = 'Hauwa Dalhatu';
String kUserEmail = 'hauwadalhatu2022@gmail.com';
int myBlue = 0xFF016BFB;


bool kHomePage = true;
bool kTransactionPage = false;
bool kProfilePage = false;


Map<String, dynamic> Data = {
  'Name': 'Usman Muhammad',
  'Invoice Number':'12345',
  'Time':'10:00 am',
  'Date':'17, Jan, 2020',
  'Amount':'N20,650',
};


