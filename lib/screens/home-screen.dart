import 'package:diba/screens/regiter_ordering.dart';
import 'package:diba/screens/users_list.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/3.jpg'),
                    ),
                    SizedBox(
                      width: 280,
                    ),
                    Text('sakina')
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 370,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image(
                  image: AssetImage('images/1.jpg'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.brown[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>UsersList()
                                                ));
                                  },
                                  icon: Icon(Icons.supervised_user_circle_sharp),
                                  color: IconColor,
                                  iconSize: 40,
                                ),
                                Text('لیست مشتریان')
                              ],
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.brown[100],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterOrder()));
                                },
                                icon: Icon(Icons.add),
                                color: IconColor,
                                iconSize: 40,
                              ),
                              Text(
                                ' ثبت سفارش',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.brown[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 40,
                                  color: IconColor,
                                ),
                                Text(' قیمت ها')
                              ],
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.brown[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.monetization_on,
                                  size: 40,
                                  color: IconColor,
                                ),
                                Text(' ثبت هزینه ها')
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.supervised_user_circle_sharp),
                      color: IconColor,
                      iconSize: 25,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment_bank),
                      color: IconColor,
                      iconSize: 25,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      color: IconColor,
                      iconSize: 25,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.new_releases_outlined),
                      color: IconColor,
                      iconSize: 25,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
