import 'package:diba/constant.dart';
import 'package:diba/screens/widget/back.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterOrder extends StatelessWidget {
  const RegisterOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Back(),
                ),
                SizedBox(
                  width: 85,
                ),
                Text(
                  'ثبت سفارشات',
                  style: TitlesFont,
                ),
                SizedBox(
                  width: 85,
                ),
                Close(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Search(),
            SizedBox(
              height: 30,
            ),
            User(),
            SizedBox(
              height: 20,
            ),
            Phone(),
            
            DropdownButton<String>(items: [
              DropdownMenuItem(
                child: Text('خانم'),
                value: 'خانم',
              ),
              DropdownMenuItem(
                child: Text('آقا'),
                value: 'آقا',
              ),


            ], onChanged: (value) {print(value);}),
          ],
        )),
      ),
    );
  }
}
