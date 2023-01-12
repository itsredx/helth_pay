import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:helth_pay/Screens/welcome_screen.dart';
import 'home.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'HealthPay',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: WelcomePage(),
      //home: const MyHomePage(title: 'Hauwa Dalhatu'),
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
    return const Home();
  }
}