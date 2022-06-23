import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/screens/startup/startup_view_model.dart';
import 'package:portfolio/utils/size_adapter.dart';
import 'package:stacked/stacked.dart';

import '../../utils/custom_colors.dart';

class StartupView extends StatelessWidget {

  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Ux().init(context, 360, 710);
    return ViewModelBuilder<StartupViewModel>.reactive(
      onModelReady: (model) => model.navigateToNextView(context),
      builder: (context, model, child) => Scaffold(
        body: Container(
            color: model.bg,
            width: width,
            height: height,
            child: Center(
              child: AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 250),
                animatedTexts: [
                  TyperAnimatedText(
                      "Shègun ",
                      textStyle:  TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: s(42)
                      ) ),
                  TyperAnimatedText(
                      "Montcho",
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: s(54)
                      )),
                ],
              ),
            )
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }

}
