import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.brown.shade100,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 50,
            width: 260,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '   جستجوی مشتری  ',
                hintTextDirection: TextDirection.rtl,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.search,
            color: Color(0xFF9e777b),
            size: 20,
          ),
        ],
      ),
    );
  }
}
