import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olga_ri_test2/app/utils/colors.dart';

ThemeData mainThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kSecondaryBackgroudColor,
    appBarTheme: appBarTheme,
    accentColor: kPrimaryBackgroudColor,
    buttonTheme: ButtonThemeData(buttonColor: kPrimaryButtonColor),
    textTheme: GoogleFonts.firaSansTextTheme().copyWith(
        button: TextStyle(
            color: kPrimaryButtonTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(
            color: kPrimaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w500),
        bodyText2: TextStyle(color: kSecondaryTextColor, fontSize: 16),
        headline1: TextStyle(
            color: kSecondaryTextColor,
            fontSize: 18,
            fontStyle: FontStyle.italic),
        headline2: TextStyle(
          color: kPrimaryTextColor,
          fontSize: 20,
        ),
        headline3: TextStyle(color: kPrimaryTextColor, fontSize: 12)),
  );
}

AppBarTheme appBarTheme = AppBarTheme(
  color: Colors.white,
  elevation: 0,
);
