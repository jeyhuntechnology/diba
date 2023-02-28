
import 'package:diba/screens/tailor_info.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'widget/back.dart';

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
      contentPadding: EdgeInsets.only(left: 0, top: 0),
      title: Text(
        "مرا به خاطر بسپار",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF9e777b),
          body: ListView(
            children: [
              const Back(),
              SafeArea(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(
                          "ورود",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'برای ورود خوش آمدید',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Column(
                            children: [
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300),
                                    ),
                                    suffixIcon: Icon(
                                        Icons.supervised_user_circle_rounded),
                                    hintTextDirection: TextDirection.ltr),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              TextField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  suffixIcon: Icon(
                                    Icons.lock,
                                  ),
                                  hintTextDirection: TextDirection.ltr,
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    // remeberMeCheckBox(),
                                    Text('رمز کاربری را فراموش کرده اید؟'),
                                  ],
                                ),
                              ),

                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kRegisterButtonColor,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    // minimumSize:Size (400,40),
                                    padding: EdgeInsets.all(15)),
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>TailorInfo(),),);},
                                child: const Text('تایید',style: TextStyle(fontWeight: FontWeight.bold),),
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