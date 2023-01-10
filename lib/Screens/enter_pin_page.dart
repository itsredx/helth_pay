import 'package:flutter/material.dart';
import 'package:helth_pay/Screens/payment_page.dart';

import '../constants.dart';
import '../home.dart';
import 'dashboard_page.dart';


class EnterPINPage extends StatefulWidget {
  const EnterPINPage({Key? key}) : super(key: key);

  @override
  State<EnterPINPage> createState() => _EnterPINPageState();
}

class _EnterPINPageState extends State<EnterPINPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = PaymentPage();
              currentTab = 0;
            });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Make Payment',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
