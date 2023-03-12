import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 80,
            width: 290,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '   شماره تماس مشتری   ',
                hintTextDirection: TextDirection.rtl,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.phone,
            color: Color(0xFF9e777b),
            size: 25,
          ),
        ],
      ),
    );
  }
}
