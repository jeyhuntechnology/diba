import 'dart:ui';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home-screen.dart';

class resentScreen_1 extends StatelessWidget {
  const resentScreen_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Image.asset('images/7.PNG',),
                  ),
                  SizedBox(height: 40,),
                  Text('رمز شما موفقانه بازسازی شد',
                    style: TextStyle(
                        fontSize: 20
                    ),),
// paddinggit
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Material(
                      elevation: 900.0,
                      color: Colors.brown.shade400,
                      borderRadius: BorderRadius.circular(30.0),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        minWidth: 350.0,
                        height: 50.0,
                        child: Text(
                          'برگشت به صفحه ورود',
                          style: const TextStyle(color:Colors.white,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),),);}}