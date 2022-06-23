import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:portfolio/utils/image_asset_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class KhalidImage extends StatelessWidget {
  final double width;
  const KhalidImage({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          constraints:const BoxConstraints(maxWidth:680),
          child: Image.asset(
            ImageAssetConstants.shegun,
            fit: BoxFit.cover,
            width: width * 0.26,
            //height: width * 0.25,
          ),
        ),
        /*Positioned(
          top: width * 0.17,
          left: 0,
          child: Image.asset(
            ImageAssetConstants.pythonCircle,
            width: width * 0.07,
            height: width * 0.07,
          ),
        ),*/
        /*Positioned(
          top: width * 0.19,
          right: width * 0.010,
          child: Image.asset(
            ImageAssetConstants.flutterCircle,
            width: width * 0.083,
            height: width * 0.08,
          ),
        ),*/
        /*Positioned(
          top: width * 0.06,
          right: width * 0.016,
          child: Image.asset(
            ImageAssetConstants.javaCircle,
            width: width * 0.06,
            height: width * 0.058,
          ),
        ),*/
        Positioned(
          top: width * 0.02,
          left: width * 0.02,
          child: InkWell(
            onTap: () async {
              await launch("https://play.google.com/store/apps/details?id=co.kodoratech.kywaapp&hl=fr&gl=US");
            },
            child: Container(
              width: width * 0.05,
              height: width * 0.05,
              decoration: const BoxDecoration(
                  color: CustomColors.primary,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child:  Image.asset(
                ImageAssetConstants.logoKYWA,
                fit: BoxFit.cover,
                width: width * 0.26,
                //height: width * 0.25,
              ),
            ),
          )
        ),
        Positioned(
          top: width * 0.19,
          right: 1,
          child: InkWell(
            onTap: ()async{
              await launch("https://play.google.com/store/apps/details?id=co.opensi.kkiapay_pos&hl=fr&gl=US");
            },
            child: Container(
              width: width * 0.035,
              height: width * 0.035,
              decoration: const BoxDecoration(
                  color: CustomColors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child:  Image.asset(
                ImageAssetConstants.logoKkiapay,
                fit: BoxFit.cover,
                width: width * 0.26,
                //height: width * 0.25,
              ),
            ),
          )
        ),
        Positioned(
          bottom: width * 0.1,
          right: width * 0.1,
          child: InkWell(
            onTap: ()async{
              await launch("https://play.google.com/store/apps/details?id=co.opensi.kkiapay_pos&hl=fr&gl=US");
            },
            child: Container(
              width: width * 0.035,
              height: width * 0.035,
              decoration: const BoxDecoration(
                  color: CustomColors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child:  Image.asset(
                ImageAssetConstants.logoSecours,
                fit: BoxFit.cover,
                width: width * 0.26,
                // height: width * 0.25,
              ),
            ),
          )
        ),
        Positioned(
          bottom: width * 0.01,
          left: 1,
          child: InkWell(
            onTap: ()async{
              await launch("https://play.google.com/store/apps/details?id=co.opensi.kkiapay_pos&hl=fr&gl=US");
            },
            child: Container(
              width: width * 0.025,
              height: width * 0.025,
              decoration: const BoxDecoration(
                  color: CustomColors.secondary,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child:  Image.asset(
                ImageAssetConstants.logoEMonitor,
                fit: BoxFit.cover,
                width: width * 0.26,
                //height: width * 0.25,
              ),
            ),
          )
        ),
        Positioned(
          top: width * 0.01,
          right: 1,
          child: InkWell(
            onTap: ()async{
              await launch("https://play.google.com/store/apps/details?id=co.kodora.challenge48&hl=fr&gl=US");
            },
            child: Container(
              width: width * 0.02,
              height: width * 0.02,
              decoration: const BoxDecoration(
                  color: CustomColors.brightBackground,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child:  Image.asset(
                ImageAssetConstants.logoC24,
                fit: BoxFit.cover,
                width: width * 0.26,
                //height: width * 0.25,
              ),
            ),
          )
        )
      ],
    );
  }
}
