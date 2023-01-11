import 'package:flutter/material.dart';
import 'package:helth_pay/Components/my_text_field.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import '../Components/my_divider.dart';
import '../constants.dart';
import '../home.dart';
import 'dashboard_page.dart';
import 'enter_pin_page.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {


  bool showInvoice = false;
  String inputValue = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = DashboardPage();
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               MyTextField(
                hintText: 'Enter invoice number',
                onChange: (myText){
                  setState((){
                    inputValue = myText;
                  });
                },
              ),
              showInvoice == false ? SizedBox() : Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  height: 265,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Data['Name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const Text(
                                    'Accommodation per Night (GENERAL)',
                                    style: kGreyTextStyle,
                                  )
                                ],
                              ),
                              const BottomButton(
                                padding:
                                EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                buttonTitle: 'Paid',
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                      const MyDivider(),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Amount',style: kGreyTextStyle,),
                                Text(Data['Amount']),
                                const SizedBox(height: 10,),
                                const Text('Date',style: kGreyTextStyle,),
                                Text(Data['Date']),
                                const SizedBox(height: 10,),
                                const Text('Reference',style: kGreyTextStyle,),
                                const Text('wploPsPV'),
                                const SizedBox(height: 10,),
                                const Text('Transaction Type',style: kGreyTextStyle,),
                                const Text('Bill Payment'),
                              ],
                            ),
                            const Flexible(child: SizedBox(width: 30,)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Service charge',style: kGreyTextStyle,),
                                Text('N200'),
                                const SizedBox(height: 10,),
                                Text('Cashier',style: kGreyTextStyle,),
                                Text('Haladu Ibrahim'),
                                const SizedBox(height: 10,),
                                Text('Receipt Number',style: kGreyTextStyle,),
                                Text('Mockerdref12789'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                        ),
                        height: 40,
                        child: Center(
                          child: Text('Invoice number: IN${Data['Invoice Number']}',
                            style: const TextStyle(color: Colors.white, fontSize: 13),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  showInvoice == false ? setState(() {
                    inputValue == Data['Invoice Number'] ? showInvoice = true : showInvoice = false;
                  }): Navigator.push(context, MaterialPageRoute(builder: (context){
                    return EnterPINPage();
                  }));
                },
                child: Padding(
                  padding: showInvoice == false ? EdgeInsets.only(top: 10.0): EdgeInsets.all(0),
                  child: BottomButton(
                    buttonTitle: showInvoice == false ? 'Search invoice' : 'Pay invoice',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


