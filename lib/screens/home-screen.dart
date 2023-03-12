import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diba/screens/regiter_ordering.dart';
import 'package:diba/screens/users_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.brown[100], actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: IconColor,
                size: 30,
              ))
        ]),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/girl.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('sakina')
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                width: 370,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/buttons.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.brown[100],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
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
                                                const UsersList()));
                                  },
                                  icon: const Icon(FontAwesomeIcons.users),
                                  color: IconColor,
                                  iconSize: 40,
                                ),
                                const Text('لیست مشتریان')
                              ],
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.brown[100],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
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
                                              const RegisterOrder()));
                                },
                                icon: const Icon(FontAwesomeIcons.plus),
                                color: IconColor,
                                iconSize: 40,
                              ),
                              const Text(
                                ' ثبت سفارش',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.brown[100],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.moneyBill,
                                  size: 40,
                                  color: IconColor,
                                ),
                                const Text(' قیمت ها')
                              ],
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.brown[100],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.moneyCheckDollar,
                                  size: 40,
                                  color: IconColor,
                                ),
                                const Text(' ثبت هزینه ها')
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CurvedNavigationBar(
                  backgroundColor: Colors.white,
                  onTap: (index) {},
                  height: 70,
                  color: Colors.brown.shade100,
                  items: const [
                    Icon(
                      FontAwesomeIcons.personDress,
                      color: Color(0xFF9e777b),
                      size: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.users,
                      color: Color(0xFF9e777b),
                      size: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.scissors,
                      color: Color(0xFF9e777b),
                      size: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.house,
                      color: Color(0xFF9e777b),
                      size: 20,
                    )
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
