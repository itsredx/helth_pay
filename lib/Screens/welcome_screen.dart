import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:helth_pay/Screens/login_page.dart';
import 'package:helth_pay/constants.dart';

import '../main.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double _progressValue = 0.0;

  final userData = GetStorage();

  @override
  void initState() {
    super.initState();

    userData.writeIfNull('isLogged', false);

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animationController.addListener(() {
      setState(() {
        _progressValue = _animationController.value;
        if(_progressValue == 1.0) {
          checkIsLogged();
          // _navigateToNextPage(context);
        }
      });
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Container(
                width: 150,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: const Center(
                  child: Text(
                    'Logo here',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2)
                ),
                width: 150,
                height: 10,
                child: LinearProgressIndicator(
                  value: _progressValue,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(myBlue)),
                  backgroundColor: Colors.grey[300],
                  //axis: Axis.vertical,
                ),

              ),
            ),
            // FutureBuilder(
            //   future: Future.delayed(const Duration(seconds: 3)),
            //   builder: (BuildContext context, AsyncSnapshot snapshot) {
            //     if (snapshot.connectionState == ConnectionState.done) {
            //       // _navigateToNextPage(context);
            //       return Container();
            //     } else {
            //       return Container();
            //     }
            //   },
            // )
          ],
        ),
      ),
    );
  }

  void _navigateToNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  void checkIsLogged(){
    userData.read('isLogged')? Navigator.push(context, MaterialPageRoute(builder: (context){
      return MyHomePage(title: kUserName);
    })):Navigator.push(context, MaterialPageRoute(builder: (context){
      return const LoginPage();
    }));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

