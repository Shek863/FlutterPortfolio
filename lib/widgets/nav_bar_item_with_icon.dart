import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/breakpoints.dart';
import '../utils/size_adapter.dart';

class NavBarItemWithIcon extends StatelessWidget {
  final String text;
  final String icon;
  final String url;

  const NavBarItemWithIcon(
      {required this.text, required this.icon, required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
          color: CustomColors.nullBackground,
          child: InkWell(
              onTap: () async {
                await launch(url);
              },
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle
                ),
                padding: const EdgeInsets.all(3),
                child: Image.asset(
                  icon,
                  width: 36,
                  height: 36,
                ),
              )
          )
      ),
    );
    
      ElevatedButton.icon(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(
            CustomColors.nullBackground
        ),
      ),
      icon:  (width < Breakpoints.xlg) ?  Image.asset(
        icon,
        width: 24,
        height: 24,
      ) : Image.asset(
        icon,
        width: 36,
        height: 36,
      ),
      onPressed: () async {
        await launch(url);
      },
      label: Text(text, style: const TextStyle(
        color: CustomColors.darkBackground,
          fontSize: 12)),
    );
  }
}
