import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helth_pay/Screens/bottom_sheet.dart';
import 'package:helth_pay/Screens/payment_page.dart';
import 'package:helth_pay/Screens/retype_pin_page.dart';
import '../Components/bottom_button.dart';
import '../constants.dart';
import '../home.dart';
import 'dashboard_page.dart';

class EnterPINPage extends StatefulWidget {
  const EnterPINPage({Key? key}) : super(key: key);

  @override
  State<EnterPINPage> createState() => _EnterPINPageState();
}

class _EnterPINPageState extends State<EnterPINPage> {

  final String paymentStatus = 'Payment Declined';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
                      child: Text(
                        'Enter your PIN',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 50.0, left: 50, top: 60, bottom: 120),
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(7)),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 250,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          buttonTitle: buttons[0],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[1],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[2],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[3],
                          buttonColor: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          buttonTitle: buttons[4],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[5],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[6],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[7],
                          buttonColor: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          buttonTitle: buttons[8],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[9],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[10],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[11],
                          buttonColor: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          buttonTitle: buttons[12],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[13],
                          buttonColor: Colors.white,
                        ),
                        MyButton(
                          buttonTitle: buttons[14],
                          buttonColor: Colors.white,
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentScreen = PaymentPage();
                                currentTab = currentTab;
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Home();
                                }));
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return BottomSheetContainer(
                                        child: paymentStatus == 'Payment Declined' ? PaymentStatus(
                                          paymentStatus: 'Payment Declined',
                                          paymentStatusIcon: Icons.error_outline_outlined,
                                          onPressed: () {

                                          },
                                        ):PaymentStatus(
                                          paymentStatus: 'Payment is Successful',
                                          paymentStatusIcon: Icons.error_outline_outlined,
                                          onPressed: () {

                                          },
                                        )
                                      );
                                    });
                              });
                            },
                            child: MyButton(
                              buttonTitle: buttons[15],
                              buttonColor: Color(myBlue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({
    Key? key,
    required this.paymentStatus,
    required this.paymentStatusIcon,
    required this.onPressed,
  }) : super(key: key);

  final String paymentStatus;
  final IconData paymentStatusIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(25)),
          ),
          Text(
            paymentStatus,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            paymentStatus == 'Payment Declined' ? 'Insufficient Balance' : '',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: GestureDetector(
                onTap: onPressed,
                child: BottomButton(buttonTitle: 'Try Again')),
          )
        ],
      ),
    );
  }
}
