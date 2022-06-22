import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_colors.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: CustomColors.brightBackground,
        width: width,
        height: height,
        child: Center(
          child: AnimatedTextKit(
            repeatForever: false,
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 500),
            animatedTexts: [
              TyperAnimatedText(
                  "Shègun ",
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 42
                  ) ),
              TyperAnimatedText(
                  "Montcho",
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 54
                  )),
            ],
          ),
        )
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

}
