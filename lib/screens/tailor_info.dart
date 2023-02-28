import 'package:diba/screens/home-screen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class TailorInfo extends StatelessWidget {
  const TailorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Text(
                  "مشخصات خیاطی ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'مشخصات خیاطی خود را وارد کنید',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF9e777b),
                        radius: 50,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value) {},
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
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          suffixIcon: Icon(Icons.factory_outlined),
                          hintText: 'نام خیاطی',
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value){},
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
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          suffixIcon: Icon(
                            Icons.location_on_outlined,
                          ),
                          hintText: 'آدرس خیاطی',
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('نوع خیاطی را انتخاب کنید'),
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: kRegisterButtonColor,
                            elevation: 3,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            minimumSize:Size (400,40),
                            padding: EdgeInsets.all(15)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        child: const Text('تایید',style: TextStyle(fontWeight: FontWeight.bold),),
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
