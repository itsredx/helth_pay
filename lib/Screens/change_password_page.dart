import 'package:flutter/material.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import 'package:helth_pay/Components/my_text_field.dart';
import 'package:helth_pay/Screens/profile_page.dart';

import '../constants.dart';
import '../home.dart';
import 'dashboard_page.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
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
          'Change Password',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: Column(
          children: [
            const MyTextField(
              hintText: 'Current Password',
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 15,),
            const MyTextField(
              hintText: 'New Password',
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 15,),

            const MyTextField(
              hintText: 'Retype New Password',
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 15,),

            BottomButton(
              buttonTitle: 'Change Password',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
