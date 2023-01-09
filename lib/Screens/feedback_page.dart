import 'package:flutter/material.dart';
import 'package:helth_pay/Components/my_divider.dart';
import 'package:helth_pay/Components/Contact_us_tile.dart';

import '../Components/bottom_button.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

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
          'Feedback',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.white,
              child: const TextField(
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  hintText: 'Comment',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rate your experience',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        child: Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellowAccent,
                          size: 40,
                        ),
                      ),
                      Flexible(
                        child: Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellowAccent,
                          size: 40,
                        ),
                      ),
                      Flexible(
                        child: Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellowAccent,
                          size: 40,
                        ),
                      ),
                      Flexible(
                        child: Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellowAccent,
                          size: 40,
                        ),
                      ),
                      Flexible(
                        child: Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellowAccent,
                          size: 40,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            BottomButton(
              buttonTitle: 'Submit',
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
