
import 'dart:ui';

import 'package:diba/screens/resent_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgotScreen extends StatelessWidget {
  const forgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.brown.shade500,
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
                  "برای بازسازی رمز به شماره تماس شما نیاز داریم",
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
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0,top: 100.0),
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
                            suffixIcon: Icon(Icons.call),
                            hintText: 'شماره تماس',
                            hintTextDirection: TextDirection.rtl,
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 230.0),
                        child: Material(
                          elevation: 900.0,
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(

                            minWidth: 350.0,
                            height: 60.0,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>resentScreen()));
                            },
                            child: Text(
                              'تایید',
                              style: const TextStyle(color:Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text('برگشت به صفحه ورود',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                        ),),
                    ],
                  ),



                )],
            ),
          ),
        )

    );
  }
}




