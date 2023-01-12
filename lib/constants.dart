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
int myLightBlue = 0xFFE4F1FE;
int myPink = 0xFFF2B5B2;
int myLightPink = 0xFFFAE6E7;
int myGrey = 0xFFEBEFF3;


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

final List<dynamic> buttons = [
  const Text(
    '1',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '2',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '3',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '-',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '4',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '5',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '6',
    style: TextStyle(fontSize: 20),
  ),
  const Icon(Icons.space_bar_rounded),
  const Text(
    '7',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '8',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '9',
    style: TextStyle(fontSize: 20),
  ),
  const Icon(Icons.backspace_outlined),
  const Text(
    '/',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '0',
    style: TextStyle(fontSize: 20),
  ),
  const Text(
    '.',
    style: TextStyle(fontSize: 20),
  ),
  const Icon(
    Icons.transit_enterexit_outlined,
    color: Colors.white,
  ),
];


