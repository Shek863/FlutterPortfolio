import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app/app.locator.dart';

class Functions {

  /// Dev tools [log]
  static Logger log = Logger();

  static Future<bool> isConnected() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
      else{
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }

  }

  /// notification
  static void showInSnackBar(context, value, color) {
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
        content: Text(
          value,
          style: TextStyle(
            //fontSize: s(40),
              color: color
          ),
        )
    ));
  }

  /// Call this to navigate to new screen from [view]
  static Future replaceWithTransition(Widget view) async {
    await locator<NavigationService>().replaceWithTransition(
      view,
    );
  }

  static Future clearStackAndShow(String route) async {
    await locator<NavigationService>().clearStackAndShow(
      //"/withPhone-view",
      route,
    );
  }

  static BuildContext getContext() {
    return StackedService.navigatorKey!.currentState!.overlay!.context;
  }

  static Future navigateTo(Widget view) async {
    await locator<NavigationService>().navigateToView(
      view,
    );
  }

  static Future back() async {
    locator<NavigationService>().back();
  }

  static Future launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

}
