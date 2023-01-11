import 'package:flutter/material.dart';
import 'package:helth_pay/Components/round_edge_button.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import 'package:helth_pay/Screens/connect_printer_screen.dart';
import 'package:helth_pay/Screens/dashboard_page.dart';
import '../constants.dart';
import '../home.dart';

class PrintPage extends StatefulWidget {
  const PrintPage({Key? key}) : super(key: key);

  @override
  State<PrintPage> createState() => _PrintPageState();
}

class _PrintPageState extends State<PrintPage> {
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
          'Printer Management',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: RoundedEdgeButton(buttonIcon: Icons.print_outlined,
                        iconRotation: 39.4,
                        height: 50,
                        width: 50,
                        iconSize: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Printer Name', style: TextStyle(color: Colors.grey),),
                          Text('Not Available')
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xFFDDE3EC),
                      height: 0,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Printer Status',style: TextStyle(color: Colors.grey),),
                          Row(
                            children: const [
                              Icon(Icons.do_not_disturb_on_total_silence, size: 13,),
                              Text(' Disconnected'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              GestureDetector(
                onTap:(){
                  setState(() {
                    currentTab = 1;
                    currentScreen = ConnectPrinter();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return PageStorage(bucket: bucket, child: Home());
                        }));
                  });
                },
                child: const BottomButton(
                    buttonTitle: 'Connect Printer',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
