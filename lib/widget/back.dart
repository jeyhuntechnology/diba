import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.brown.shade100),
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              size: 20,
              color: Colors.brown,
            ),
          ),
        ),
      ),
    );
  }
}
