import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Description extends StatelessWidget {
  final bool isVertical;
  final double width;
  const Description(
      {required this.isVertical, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isVertical ? double.infinity : width * 0.34,
      child: Column(
        crossAxisAlignment: isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
         // SizedBox(height: 0.015 * width),
          Text('Full-Stack',
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 100)),
          const SizedBox(height: 4),
          Text('Developer.',
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 100)),
          const SizedBox(height: 45),
          SizedBox(
            width: isVertical ? double.infinity : width * 0.29,
            height: 90,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 1),
              animatedTexts: [
                TyperAnimatedText(
                    "Hello! My name is Sègun Montcho",
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.gray,
                        fontSize: 22)),
                TyperAnimatedText(
                    "I'm currently working at",
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.gray,
                        fontSize: 22)),
                TyperAnimatedText(
                    "KKiaPay",
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.kkiapay,
                        fontSize: 26)),
                TyperAnimatedText(
                    "I'm developing mobile,frontend and backend applications with :",
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.gray,
                        fontSize: 22)),
                TyperAnimatedText (
                    "Java, Kotlin, dart, Java-script",
                    textAlign: isVertical ? TextAlign.center : TextAlign.start,
                    textStyle: GoogleFonts.getFont('Delius',
                        color: CustomColors.purple,
                        fontSize: 26)),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              width: 360,
              height: 70,
              alignment: Alignment.center,
              color: CustomColors.primary,
              child: Center( child: Text('Start a projet',
                  style: GoogleFonts.getFont('Days One',
                      color: Colors.black, fontSize: 18)))),
        /*  InkWell(
            onTap: () async => !await launch(
                'https://mail.google.com/mail/u/0/?fs=1&to=khalidlionel.2089@gmail.com&tf=cm'),
            child: Text("Let's chat",
                style: GoogleFonts.getFont('Delius',
                    decoration: TextDecoration.underline,
                    color: CustomColors.primary,
                    fontSize: 20)),
          )*/
        ],
      ),
    );
  }
}
