import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/utils/functions.dart';
import 'package:stacked/stacked.dart';
import 'dart:async';

class StartupViewModel extends BaseViewModel {

  Future navigateToNextView(context) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    Functions.navigateTo(const Portfolio());
  }

}
