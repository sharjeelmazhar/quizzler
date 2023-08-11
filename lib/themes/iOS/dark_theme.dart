import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkThemeiOS = ThemeData(
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: const TextStyle(
        fontSize: 25,
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    // systemOverlayStyle: SystemUiOverlayStyle(
    //   statusBarIconBrightness: Brightness.light,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarColor: Colors.transparent,
    // ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
  ),
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade300,
  ),
);
