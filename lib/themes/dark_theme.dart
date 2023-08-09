import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontSize: 25),
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade300,
  ),
);
