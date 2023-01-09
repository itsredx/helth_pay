import 'package:flutter/material.dart';
import '../Components/round_edge_button.dart';
import '../constants.dart';
import 'package:helth_pay/Components/bottom_button.dart';

class ChangePINPage extends StatefulWidget {
  const ChangePINPage({Key? key}) : super(key: key);

  @override
  State<ChangePINPage> createState() => _ChangePINPageState();
}

class _ChangePINPageState extends State<ChangePINPage> {
  final List<dynamic> buttons = [
    const Text('1', style: TextStyle(fontSize: 20),),
    const Text('2', style: TextStyle(fontSize: 20),),
    const Text('3', style: TextStyle(fontSize: 20),),
    const Text('-', style: TextStyle(fontSize: 20),),
    const Text('4', style: TextStyle(fontSize: 20),),
    const Text('5', style: TextStyle(fontSize: 20),),
    const Text('6', style: TextStyle(fontSize: 20),),
    const Icon(Icons.space_bar_rounded),
    const Text('7', style: TextStyle(fontSize: 20),),
    const Text('8', style: TextStyle(fontSize: 20),),
    const Text('9', style: TextStyle(fontSize: 20),),
    const Icon(Icons.backspace_outlined),
    const Text('/', style: TextStyle(fontSize: 20),),
    const Text('0', style: TextStyle(fontSize: 20),),
    const Text('.', style: TextStyle(fontSize: 20),),
    const Icon(Icons.transit_enterexit_outlined, color: Colors.white,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const RoundedEdgeButton(
                    buttonIcon: Icons.key,
                    height: 50,
                    width: 50,
                    iconSize: 25,
                  ),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                    child: BottomButton(buttonTitle: 'Proceed'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(buttonTitle: buttons[0], buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[1],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[2],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[3],buttonColor: Colors.grey,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(buttonTitle: buttons[4],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[5],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[6],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[7],buttonColor: Colors.grey,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(buttonTitle: buttons[8],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[9],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[10],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[11],buttonColor: Colors.grey,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(buttonTitle: buttons[12],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[13],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[14],buttonColor: Colors.white,),
                      MyButton(buttonTitle: buttons[15],buttonColor: Color(myBlue),),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.buttonTitle, required this.buttonColor,
  }) : super(key: key);

  final Widget buttonTitle;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 2,
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: buttonColor, //Color(0xFFEBEFF3),
              borderRadius: BorderRadius.circular(8),
            ),
            // child: isIcon(buttonTitle!) ? myIcon : buttonTitle,
            child: Center(child: Flexible(child: buttonTitle))
          ),
        ),
      ),
    );
  }
}
