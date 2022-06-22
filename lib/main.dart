import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/splash.dart';
import 'package:portfolio/utils/custom_colors.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor:CustomColors.primary, 
    statusBarColor: CustomColors.primary, 
  ));
  // Setup locator
  setupLocator();

  runApp( MaterialApp(
    theme: ThemeData(
      fontFamily: 'Poppins',
      primarySwatch: Colors.grey,
      primaryColor: CustomColors.primary,
     splashColor: CustomColors.primary,
     highlightColor:CustomColors.primary,
    ),
    title: 'Shègun Montcho',
    //home: const Splash(),
    debugShowCheckedModeBanner: false,
    navigatorKey: StackedService.navigatorKey,
    onGenerateRoute: StackedRouter().onGenerateRoute,
  ));
}