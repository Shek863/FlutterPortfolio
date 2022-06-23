import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:stacked/stacked.dart';
import 'dart:async';

class StartupViewModel extends BaseViewModel {

  Color _bg = Colors.white;
  Color get  bg => _bg;
  setColor(Color color){
    _bg = color;
    notifyListeners();
  }


  Future navigateToNextView(context) async {
    await Future.delayed(const Duration(milliseconds: 700));
    setColor(CustomColors.brightBackground);
    await Future.delayed(const Duration(milliseconds: 500));
    Functions.navigateTo(const Portfolio());
  }

}
