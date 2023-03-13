import 'package:diba/constants/images.dart';
import 'package:diba/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  static String id = 'intro_screen';
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9e777b),
        body: SafeArea(
          child: IntroductionScreen(
            globalBackgroundColor: Colors.brown[300],
            scrollPhysics: const BouncingScrollPhysics(),
            pages: [
              PageViewModel(
                titleWidget: const Text(
                  'دیبا',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body: 'به اپلیکشن دیبا خوش آمدید',
                image: const CircleAvatar(
                  backgroundImage: AssetImage(Images.womanTailor),
                  radius: 130,
                ),
              ),
              PageViewModel(
                titleWidget: const Text(
                  'مدیریت اندازه گیری',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body:
                    '    دیگر برای اندازه گیری لباس نیازی نیست دنبال دفتر بگردید شما میتوانید با داشتن اپلیکشن خیاطی دیبا اندازه ها را د گوشی همراه خود داشته باشید و همیشه همراه تان باشد',
                image: const CircleAvatar(
                  backgroundImage: AssetImage(Images.manTailor),
                  radius: 130,
                ),
              ),
              PageViewModel(
                titleWidget: const Text(
                  'اندازه گیری لباس ها',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                body:
                    ' دیگر برای اندازه گیری لباس نیازی نیست دنبال دفتر بگردید شما میتوانید با داشتن اپلیکشن خیاطی دیبا اندازه ها را د گوشی همراه خود داشته باشید و همیشه همراه تان باشد   ',
                image: const CircleAvatar(
                  backgroundImage: AssetImage(Images.womanTailor),
                  radius: 130,
                ),
              ),
            ],
            onDone: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Register(),
                ),
              );
            },
            onSkip: () {},
            showSkipButton: true,
            skip: const Text(
              "skip",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            next: const Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            ),
            done: const Text(
              "Done",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              color: Colors.black,
              activeColor: Colors.grey,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ));
  }
}
