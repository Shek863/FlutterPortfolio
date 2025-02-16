import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:portfolio/utils/image_asset_constants.dart';
import 'package:portfolio/widgets/logo.dart';
import 'package:portfolio/widgets/nav_bar_button.dart';
import 'package:portfolio/widgets/nav_bar_item.dart';
import 'package:portfolio/widgets/nav_bar_item_with_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/size_adapter.dart';

class NavBar extends StatelessWidget {
  final double width;
  final GlobalKey intrestsKey;
  final GlobalKey skillsKey;
  final ScrollController scrollController;
  late final RxDouble collapsableHeight;
  NavBar(
      {required this.width,
      required this.intrestsKey,
      required this.skillsKey,
      required this.scrollController,
      Key? key})
      : super(key: key) {
    collapsableHeight = 0.0.obs;
  }

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double y = position.dy;
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Ux().init(context, 300, 710);
    Widget navBarRow = Stack( children: [
      Padding(
        padding: EdgeInsets.only(left: width * 0.04),
        child: Logo(width: width,scrollController: scrollController,),
      ),
      /*Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavBarItem(
              text: 'About',
              onTap: () {},
            ),
            NavBarItem(
                text: 'Skills', onTap: () => scrollToWidgetByKey(skillsKey) ),
            NavBarItem(
              text: 'Works',
              onTap: () => scrollToWidgetByKey(intrestsKey),
            ),
            const SizedBox(width: 60),
          ]),*/
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        const SizedBox(width: 50),
        Row(children: [
          const NavBarItemWithIcon(
            text: '',
            icon: ImageAssetConstants.twitter,
            url: 'https://twitter.com/shek_draw',
          ),
          SizedBox(width:  w(14) ),
          const NavBarItemWithIcon(
              text: '',
              icon: ImageAssetConstants.github,
              url: 'https://github.com/Shek863'),
          SizedBox(width: w(14) ),
          const NavBarItemWithIcon(
              text: '',
              icon: ImageAssetConstants.linkedIn,
              url: 'https://www.linkedin.com/in/shek368/'),
          SizedBox(width: w(14) ),
        ])
      ])
    ]);
    List<Widget>? navBarColumn = [
      /*NavBarItem(
          text: 'Home',
          onTap: () {
            collapsableHeight.value = 0.0;
          }),
      const SizedBox(width: 10),
      NavBarItem(
          text: 'Skills',
          onTap: () {
            scrollToWidgetByKey(skillsKey);

            collapsableHeight.value = 0.0;
          }),
      const SizedBox(width: 10),
      NavBarItem(
          text: 'Intrests',
          onTap: () {
            scrollToWidgetByKey(intrestsKey);
            collapsableHeight.value = 0.0;
          }),*/
      NavBarItem(
          text: 'github',
          onTap: () async {
            await launch('https://github.com/khalid-alsaleh-dev');
          }),
      NavBarItem(
          text: 'facebook',
          onTap: () async =>
              await launch('https://www.facebook.com/khalid.alsaleh.52090/')),
      NavBarItem(
          text: 'linkedIn',
          onTap: () async => await launch(
              'https://www.linkedin.com/in/khalid-al-saleh-3561881a8/')),
    ];
    return Stack(
      children: [
        ObxValue<RxDouble>(
            (data) => AnimatedContainer(
                  margin: const EdgeInsets.only(top: 110.0),
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.ease,
                  height: data.value,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: CustomColors.darkBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: navBarColumn,
                    ),
                  ),
                ),
            collapsableHeight),
        Container(
          height: 80.0,
          margin: const EdgeInsets.only(top: 40.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: /*(width < Breakpoints.xlg) ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Logo(width: width,scrollController: scrollController,)),
                    NavBarButton(
                        onPressed: () {
                          if (collapsableHeight.value == 0.0) {
                            collapsableHeight.value = 240.0;
                          } else if (collapsableHeight.value == 240.0) {
                            collapsableHeight.value = 0.0;
                          }
                        },
                        width: width),
                  ],
                ) :*/ navBarRow,
        ),
      ],
    );
  }
}
