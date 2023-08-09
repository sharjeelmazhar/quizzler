import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black, fontSize: 25),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey.shade900,
    secondary: Colors.black,
  ),
);
