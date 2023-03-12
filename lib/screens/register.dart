import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widget/back.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF9e777b),
          body: ListView(
            children: [
              const Back(),
              SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        const Text(
                          "ثبت نام",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'مشخصات خود را وارد کنید',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Container(
                          height: 630,
                          padding: const EdgeInsets.all(30),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Column(
                            children: [
                              TextFormField(
                                onChanged: (value) {
                                  //Do something with the user input
                                },
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
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  suffixIcon: const Icon(
                                      Icons.supervised_user_circle_rounded),
                                  hintText: 'نام کاربری خود را وارد کنید...',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextField(
                                onChanged: (value) {
                                  //Do something with the user input
                                },
                                keyboardType: TextInputType.text,
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
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  suffixIcon: const Icon(
                                    Icons.map,
                                  ),
                                  hintText: 'شماره تلفن خود را وارد کنید...',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                              const SizedBox(height: 30),
                              TextField(
                                onChanged: (value) {
                                  //Do something with the user input
                                },
                                keyboardType: TextInputType.text,
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
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  suffixIcon: const Icon(
                                    Icons.lock,
                                  ),
                                  hintText: 'رمز کاربری',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                              const SizedBox(height: 30),
                              TextField(
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
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  suffixIcon: const Icon(
                                    Icons.lock,
                                  ),
                                  hintText: 'تایید رمز کاربری..',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kRegisterButtonColor,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    minimumSize: const Size(400, 40),
                                    padding: const EdgeInsets.all(15)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login(),
                                    ),
                                  );
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
              )
            ],
          )),
    );
  }
}
