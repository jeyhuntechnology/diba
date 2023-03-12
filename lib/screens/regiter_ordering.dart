import 'package:diba/constants/constants.dart';
import 'package:diba/widget/back.dart';
import 'package:diba/widget/phone.dart';
import 'package:diba/widget/search.dart';
import 'package:diba/widget/user.dart';
import 'package:flutter/material.dart';

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
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Back(),
                ),
                const SizedBox(
                  width: 85,
                ),
                Text(
                  'ثبت سفارشات',
                  style: TitlesFont,
                ),
                const SizedBox(
                  width: 85,
                ),
                // const Close(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Search(),
            const SizedBox(
              height: 30,
            ),
            const User(),
            const SizedBox(
              height: 20,
            ),
            const Phone(),
            DropdownButton<String>(
                items: const [
                  DropdownMenuItem(
                    child: Text('خانم'),
                    value: 'خانم',
                  ),
                  DropdownMenuItem(
                    child: Text('آقا'),
                    value: 'آقا',
                  ),
                ],
                onChanged: (value) {
                  print(value);
                }),
          ],
        )),
      ),
    );
  }
}
