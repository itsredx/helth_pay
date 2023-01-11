import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:helth_pay/Screens/retype_pin_page.dart';
import 'package:helth_pay/home.dart';
import '../Components/round_edge_button.dart';
import '../constants.dart';
import 'package:helth_pay/Components/bottom_button.dart';

class ChangePINPage extends StatefulWidget {
  const ChangePINPage({Key? key}) : super(key: key);

  @override
  State<ChangePINPage> createState() => _ChangePINPageState();
}

class _ChangePINPageState extends State<ChangePINPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = currentScreen;
              currentTab = currentTab;
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Home();
              }));
            });
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Change PIN',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 120, bottom: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE4F1FE),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'lib/icons/key.svg',
                          color: Color(myBlue),
                        ),
                      ),
                    ),
                    // RoundedEdgeButton(
                    //   height: 50,
                    //   width: 50,
                    //   iconSize: 25,
                    //   child: Image.asset('lib/icons/key.svg',
                    //     color: currentTab == 0 ? Color(myBlue) : Colors.grey,),
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Change PIN',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Change your PIN to help secure',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      'your account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBEFF3),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBEFF3),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBEFF3),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBEFF3),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return RetypePINPage();
                  }));
                },
                child: BottomButton(buttonTitle: 'Proceed', ),
              ),
            ),
            Column(
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
                    MyButton(
                      buttonTitle: buttons[15],
                      buttonColor: Color(myBlue),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


