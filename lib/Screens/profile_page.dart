import 'package:flutter/material.dart';
import 'package:helth_pay/Components/settings_tile.dart';
import 'package:helth_pay/Screens/change_password_page.dart';
import 'package:helth_pay/Screens/change_pin_page.dart';
import 'package:helth_pay/Screens/contactus_page.dart';
import 'package:helth_pay/Screens/feedback_page.dart';
import 'package:helth_pay/Screens/login_page.dart';
import 'package:helth_pay/constants.dart';
import 'package:helth_pay/Components/round_edge_button.dart';
import '../home.dart';
import 'dashboard_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
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
          'My Profile',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Color(myBlue), borderRadius: BorderRadius.circular(0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                      'HD',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    kUserName,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    kUserEmail,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Privacy and Security',
                        style: TextStyle(fontSize: 10),
                      ),
                      SettingsTiles(
                        tileTitle: 'Change PIN',
                        leftIcon: Icons.lock_outline_rounded,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangePINPage();
                              },
                            ),
                          );
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFFDDE3EC),
                          height: 0,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                      ),
                      SettingsTiles(
                        tileTitle: 'Change Password',
                        leftIcon: Icons.lock_outline_rounded,
                        onPressed: () {
                          setState(() {
                            currentScreen = const ChangePasswordPage();
                            currentTab = currentTab;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return  PageStorage(bucket: bucket, child: Home() );
                            }));
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Support',
                        style: TextStyle(fontSize: 10),
                      ),
                      SettingsTiles(
                        tileTitle: 'Contact Us',
                        leftIcon: Icons.phone,
                        onPressed: () {
                          setState(() {
                            currentScreen = const ContactUsPage();
                            currentTab = currentTab;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return  PageStorage(bucket: bucket, child: Home() );
                            }));
                          });
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          color: Color(0xFFDDE3EC),
                          height: 0,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                      ),
                      SettingsTiles(
                        tileTitle: 'Feedback',
                        leftIcon: Icons.feedback_outlined,
                        onPressed: () {
                          setState(() {
                            currentScreen = const FeedbackPage();
                            currentTab = currentTab;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return  PageStorage(bucket: bucket, child: Home() );
                            }));
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 55,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: const [
                            RoundedEdgeButton(
                              buttonIcon: Icons.logout,
                              buttonColor: Color(0xFFFAE6E7),
                              buttonIconColor: Color(0xFFF2B5B2),
                              iconRotation: 39.4,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Logout',
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

