import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:portfolio/utils/image_asset_constants.dart';
import 'package:portfolio/widgets/logo.dart';

class Footer extends StatelessWidget {
  final double width;
  final ScrollController scrollController;
  const Footer({required this.width,required this.scrollController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black54,
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo(width: width,scrollController: scrollController,),
             //const SizedBox(height:26),

             //const SizedBox(height:26),
             width > Breakpoints.sm ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text('Copyright © 2022 shegun-montcho',
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray,
                          fontSize: 14)),
                  Text('All rights reserved',
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray,
                          fontSize: 14)),
                  Text('shekmontcho@gmail.com',
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray,
                          fontSize: 14) ),
                ],
              ) : Column(
                children: [
                  Text('Copyright © 2022 shegun-montcho',
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray,
                          fontSize: 14)),
                  const SizedBox(height: 10),
                  Text('All rights reserved',
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray,
                          fontSize: 14)),
                  const SizedBox(height: 10),
                  Text('shekmontcho@gmail.com',
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray,
                          fontSize: 14) ),
                ],
              ),
             //Suivez nous sur :
          ],)
              );
  }
}
