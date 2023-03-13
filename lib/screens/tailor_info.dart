import 'package:diba/screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constants.dart';

class TailorInfo extends StatelessWidget {
  const TailorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                const Text(
                  "مشخصات خیاطی ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'مشخصات خیاطی خود را وارد کنید',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  height: 635,
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xFF9e777b),
                        radius: 50,
                        child: Icon(
                          FontAwesomeIcons.camera,
                          size: 50,
                        ),
                      ),
                      const Text('آپلود عکس'),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          suffixIcon: Icon(FontAwesomeIcons.user),
                          hintText: 'نام خیاطی',
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value) {},
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(30),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          suffixIcon: const Icon(
                            FontAwesomeIcons.locationDot,
                          ),
                          hintText: 'آدرس خیاطی',
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('نوع خیاطی را انتخاب کنید'),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: kRegisterButtonColor,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            minimumSize: const Size(400, 40),
                            padding: const EdgeInsets.all(15)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: const Text(
                          'تایید',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
