import 'package:flutter/material.dart';
import 'package:quizzler/themes/Android/dark_theme.dart';
import 'package:quizzler/themes/Android/light_theme.dart';
import 'package:quizzler/themes/iOS/light_theme.dart';
import 'package:quizzler/themes/iOS/dark_theme.dart';
import 'package:quizzler/views/home_page.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeData? lightTheme;
    ThemeData? darkTheme;

    if (defaultTargetPlatform == TargetPlatform.android) {
      lightTheme = lightThemeAndroid;
      darkTheme = darkThemeAndroid;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      lightTheme = lightThemeiOS;
      darkTheme = darkThemeiOS;
    }

    return MaterialApp(
      title: 'Quizzler',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Quizzler',
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       home: const HomePage(),
//     );
//   }
// }
