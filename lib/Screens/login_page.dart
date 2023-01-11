import 'package:flutter/material.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import 'package:helth_pay/Components/my_text_field.dart';
import 'package:helth_pay/Screens/create_pin_page.dart';
import '../constants.dart';
import '../home.dart';
import 'dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 100),
              child: Column(
                children: [
                  Container(
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
                  const Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Text('Welcome back', style: TextStyle(fontWeight: FontWeight.w200),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 15),
                    child: Text('Login to Your Account.', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: MyTextField(hintText: 'Email Address', prefixIcon: Icon(Icons.email_outlined,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: MyTextField(hintText: 'Password', prefixIcon: Icon(Icons.lock_outline_rounded,), suffixIcon: Icon(Icons.remove_red_eye_outlined),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Forgot Password?', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          currentScreen = const DashboardPage();
                          currentTab = 0;
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return  CreatePINPage();//PageStorage(bucket: bucket, child: Home() );
                          }));
                        });
                      },
                      child: const BottomButton(buttonTitle: 'Login'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
