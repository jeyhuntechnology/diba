import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);

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
          child: Padding(
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

class Close extends StatelessWidget {
  const Close({Key? key}) : super(key: key);

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
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              FontAwesomeIcons.close,
              size: 20,
              color: Colors.brown,
            ),
          ),
        ),
      ),
    );
  }
}

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

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

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
                hintText: '   نام مشتری   ',
                hintTextDirection: TextDirection.rtl,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.user,
            color: Color(0xFF9e777b),
            size: 25,
          ),
        ],
      ),
    );
  }
}

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
