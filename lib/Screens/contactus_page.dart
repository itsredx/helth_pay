import 'package:flutter/material.dart';
import 'package:helth_pay/Components/Contact_us_tile.dart';
import 'package:helth_pay/Components/my_divider.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          'Contact Us',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 120,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ContactUsTile(tileTitle: 'Call us', tileIcon: Icons.phone, tileSubtitle: '08123456789',),
              MyDivider(),
              ContactUsTile(tileTitle: 'Send us an email', tileIcon: Icons.email_outlined, tileSubtitle: 'care@company.com',),

            ],
          ),
        ),
      ),
    );
  }
}
