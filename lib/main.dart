import 'package:flutter/material.dart';
import 'package:quizzler/themes/dark_theme.dart';
import 'package:quizzler/themes/light_theme.dart';
import 'package:quizzler/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
