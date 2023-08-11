import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.black,
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
    // systemOverlayStyle: SystemUiOverlayStyle.dark,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black, fontSize: 15),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade300,
  ),
);
