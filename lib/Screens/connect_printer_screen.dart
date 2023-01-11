import 'package:flutter/material.dart';
import 'package:helth_pay/Components/my_divider.dart';
import 'package:helth_pay/Components/paired_printer.dart';
import 'package:helth_pay/Screens/change_pin_page.dart';
import 'package:helth_pay/Screens/print_page.dart';
import '../Components/bottom_button.dart';
import '../Components/transaction_tiles.dart';
import '../constants.dart';
import '../home.dart';

class ConnectPrinter extends StatefulWidget {
  const ConnectPrinter({Key? key}) : super(key: key);

  @override
  State<ConnectPrinter> createState() => _ConnectPrinterState();
}

class _ConnectPrinterState extends State<ConnectPrinter> {
  bool showNearbyBluetooth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = PrintPage();
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
          'Connect Printer',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                          child: Text('Paired Printers', style: TextStyle(fontWeight: FontWeight.w500),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: PairedPrinter(
                            printerName: 'PHTP P-10',
                            printerSerialNumber: '2BD34578908BE23',
                          ),
                        ),
                        MyDivider(),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: PairedPrinter(
                            printerName: 'HP LaserJet Bluetooth',
                            printerSerialNumber: '2BD34578908BEC4',
                          ),
                        ),
                        MyDivider(),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: PairedPrinter(
                            printerName: 'P20 Max TBB',
                            printerSerialNumber: '2BD34578908BE23',
                          ),
                        ),
                        MyDivider(),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: PairedPrinter(
                            printerName: 'Nikon E2020',
                            printerSerialNumber: '2BD34578908BEJ4',
                          ),
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showNearbyBluetooth = !showNearbyBluetooth;
                    });
                  },
                  child: const BottomButton(
                    buttonTitle: 'Search nearby Bluethooth',
                  ),
                ),
              ),
              showNearbyBluetooth == false
                  ? const SizedBox()
                  : Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                                child: Text('Available Printers', style: TextStyle(fontWeight: FontWeight.w500),),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: PairedPrinter(
                                  printerName: 'PHTP P-10',
                                  printerSerialNumber: '2BD34578908BE23',
                                ),
                              ),
                              MyDivider(),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: PairedPrinter(
                                  printerName: 'HP LaserJet Bluetooth',
                                  printerSerialNumber: '2BD34578908BEC4',
                                ),
                              ),
                              MyDivider(),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: PairedPrinter(
                                  printerName: 'P20 Max TBB',
                                  printerSerialNumber: '2BD34578908BE23',
                                ),
                              ),
                              MyDivider(),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: PairedPrinter(
                                  printerName: 'Nikon E2020',
                                  printerSerialNumber: '2BD34578908BEJ4',
                                ),
                              )
                            ]),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
