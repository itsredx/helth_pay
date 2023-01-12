import 'package:flutter/material.dart';
import 'package:helth_pay/Components/bottom_button.dart';
import 'package:helth_pay/Components/my_text_field.dart';
import 'package:helth_pay/Screens/bottom_sheet.dart';
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
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _retypePasswordController = TextEditingController();
  bool showCurrentPassword = false;
  bool showNewPassword = false;
  bool showRetypedPassword = false;
  static const String password = '1234';
  String myCurrentPassword = '';
  String myNewPassword = '';
  String myRetypedpassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEFF3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              currentScreen = ProfilePage();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
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
          'Change Password',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _currentPasswordController,
                obscureText: showCurrentPassword == false ? true : false,
                autocorrect: false,
                onChanged: (currentPassword) {
                  setState(() {
                    myCurrentPassword = currentPassword;
                  });
                },
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          showCurrentPassword = !showCurrentPassword;
                        });
                      },
                      child:  showCurrentPassword == false ? Icon(Icons.remove_red_eye_outlined):Icon(Icons.remove_red_eye)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    ),
                    hintText: 'Current Password',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFFBAC6D8))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _newPasswordController,
                obscureText: showNewPassword == false ? true : false,
                autocorrect: false,
                onChanged: (newPassword) {
                  setState(() {
                    myNewPassword = newPassword;
                  });
                },
                textAlignVertical: TextAlignVertical.top,
                decoration:  InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            showNewPassword = !showNewPassword;
                          });
                        },
                        child:  showNewPassword == false ? Icon(Icons.remove_red_eye_outlined):Icon(Icons.remove_red_eye)
                    ),                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    ),
                    hintText: 'New Password',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFFBAC6D8))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _retypePasswordController,
                obscureText: showRetypedPassword == false ? true : false,
                autocorrect: false,
                onChanged: (retypePassword) {
                  setState(() {
                    myRetypedpassword = retypePassword;
                  });
                },
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            showRetypedPassword = !showRetypedPassword;
                          });
                        },
                        child:  showRetypedPassword == false ? Icon(Icons.remove_red_eye_outlined):Icon(Icons.remove_red_eye)
                    ),                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 2.0),
                    ),
                    hintText: 'Retype Password',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFFBAC6D8))),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    myCurrentPassword == password &&
                            myRetypedpassword == myNewPassword //&&
                        //
                        ? showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return BottomSheetContainer(
                                child: PasswordChangeStatus(
                                  passwordChangeStatus: 'success',
                                  changeStatusIcon:
                                      Icons.check_circle_outline_outlined,
                                  onPressed: () {},
                                  buttonTitle: '',
                                  buttonColor: myLightBlue,
                                  iconColor: myBlue,
                                  onClosePressed: () {
                                    Navigator.pop(context);
                                    setState(() {
                                      _retypePasswordController.clear();
                                      _newPasswordController.clear();
                                      _currentPasswordController.clear();
                                    });
                                  },
                                ),
                              );
                            })
                        : showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return BottomSheetContainer(
                                child: PasswordChangeStatus(
                                  passwordChangeStatus: 'declined',
                                  changeStatusIcon: Icons.clear_rounded,
                                  onPressed: () {},
                                  buttonTitle: '',
                                  buttonColor: myLightPink,
                                  iconColor: myPink,
                                  onClosePressed: () {
                                    Navigator.pop(context);
                                    setState(() {
                                      _retypePasswordController.clear();
                                      _newPasswordController.clear();
                                      _currentPasswordController.clear();
                                    });
                                  },
                                ),
                              );
                            });
                  });
                },
                child: BottomButton(
                  buttonTitle: 'Change Password',
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordChangeStatus extends StatelessWidget {
  const PasswordChangeStatus({
    Key? key,
    required this.passwordChangeStatus,
    required this.changeStatusIcon,
    required this.onPressed,
    required this.buttonTitle,
    required this.buttonColor,
    required this.iconColor,
    this.onClosePressed,
  }) : super(key: key);

  final String passwordChangeStatus;
  final IconData changeStatusIcon;
  final VoidCallback onPressed;
  final String buttonTitle;
  final int buttonColor;
  final int iconColor;
  final VoidCallback? onClosePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: onClosePressed,
                //     () {
                //   Navigator.pop(context);
                // },
                child: Row(
                  children: [
                    const Text(
                      'close ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.close_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color(buttonColor),
                borderRadius: BorderRadius.circular(25)),
            child: Icon(
              changeStatusIcon,
              color: Color(iconColor),
              size: 40,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8),
          //   child: Text(
          //     passwordChangeStatus,
          //     style: const TextStyle(fontWeight: FontWeight.bold),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Text(
            passwordChangeStatus == 'success'
                ? 'Password has been'
                : 'Password change',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            passwordChangeStatus != 'success'
                ? 'was declined'
                : 'changed successfully',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          passwordChangeStatus != 'success'
              ? Text(
                  'Please check your password ',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                )
              : SizedBox(),
          passwordChangeStatus != 'success'
              ? Text(
                  'and try again ',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                )
              : SizedBox(),

          // Padding(
          //   padding: const EdgeInsets.only(
          //       right: 17.0, left: 17, top: 25, bottom: 12),
          //   child: GestureDetector(
          //     onTap: onPressed,
          //     child: (passwordChangeStatus == 'success')
          //         ? const SizedBox()
          //         : BottomButton(buttonTitle: buttonTitle),
          //   ),
          // )
        ],
      ),
    );
  }
}
