import 'package:diba/screens/tailor_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/constants.dart';
import '../widget/back.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  remeberMeCheckBox() {
    return CheckboxListTile(
      value: false,
      onChanged: (value) {},
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: const EdgeInsets.only(left: 0, top: 0),
      title: const Text(
        "مرا به خاطر بسپار",
      ),
    );
  }

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
                          "ورود",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'برای ورود خوش آمدید',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 630,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
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
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  suffixIcon: Icon(
                                    FontAwesomeIcons.user,
                                    color: IconColor,
                                  ),
                                  hintText: ' نام کاربری خود را وارد کنید',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
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
                                  suffixIcon: Icon(
                                    FontAwesomeIcons.lock,
                                    color: IconColor,
                                  ),
                                  hintText: ' رمز کاربری خود را وارد کنید',
                                  hintTextDirection: TextDirection.rtl,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: const [
                                    // remeberMeCheckBox(),
                                    Text('رمز کاربری را فراموش کرده اید؟'),
                                  ],
                                ),
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
                                      builder: (context) => const TailorInfo(),
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
// onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()))},