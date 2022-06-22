
import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/functions.dart';

double width = MediaQuery.of(Functions.getContext()).size.width;
double height = MediaQuery.of(Functions.getContext()).size.height;
double screenHeight = 640;
double screenWidth = 360;
double size1=1;
double spatialW1=1;

class Ux {
  void init(BuildContext context, double deltaX, double deltaY) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    size1 = screenHeight / deltaY;
    spatialW1 = screenWidth / deltaX;
  }
}

double s(double _size){
  return size1 * _size;
}

double h(double _spatialH){
  return size1 * _spatialH;
}

double w(double _spatialW){
  return spatialW1 * _spatialW;
}