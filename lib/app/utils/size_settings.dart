import 'package:flutter/material.dart';

class SizeSettings {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

}

//returns proportional screen height
  double pHeight(double inputHeight) {
    double _screenHeight = SizeSettings.screenHeight;
    return (inputHeight / 667.0) * _screenHeight;
  }

  //returns propotional screen width
  double pWidth(double inputWidth) {
    double _screenWidth = SizeSettings.screenWidth;
    return (inputWidth / 375) * _screenWidth;
  }