
import 'dart:ui';

//import 'package:flutter/cupertino.dart';
import 'package:diba/screens/resent_password1.dart';
import 'package:flutter/material.dart';

class resentScreen extends StatelessWidget {
  const resentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF9e777b),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                  ),
                  onPressed: () {},
                ),

                Text(
                  "بازسازی رمز",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "رمز جدید خود را وارد کنید",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                Container(
                  height: 520,
                  width: 409,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 20.0, left: 20.0,top: 80.0),
                        child: SizedBox(
                          height: 55,
                          child: TextFormField(

                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              suffixIcon: Icon(Icons.lock_outline),
                              prefixIcon: Icon(Icons.remove_red_eye_outlined),
                              hintText: 'رمز کاربری قبلی',
                              hintTextDirection: TextDirection.rtl,
                            ),

                          ),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(
                            right: 20.0, left: 20.0,top: 40.0),
                        child: SizedBox(
                          height: 55,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              suffixIcon: Icon(Icons.lock_outline),
                              prefixIcon: Icon(Icons.remove_red_eye_outlined),
                              hintText: 'رمز کاربری جدید',
                              hintTextDirection: TextDirection.rtl,
                            ),

                          ),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(
                            right: 20.0, left: 20.0,top: 40.0),
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(

                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              suffixIcon: Icon(Icons.lock_outline),
                              prefixIcon: Icon(Icons.remove_red_eye_outlined),
                              hintText: 'تایید رمز کاربری',
                              hintTextDirection: TextDirection.rtl,
                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Material(
                          elevation: 900.0,
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>resentScreen_1()));
                            },
                            minWidth: 350.0,
                            height: 60.0,
                            child: Text(
                              'تایید',
                              style: const TextStyle(color:Colors.white),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),



                )],
            ),
          ),
        )

    );
  }
}




