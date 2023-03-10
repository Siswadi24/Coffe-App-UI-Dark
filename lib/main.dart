import 'package:coffe_app_ui_dark/ui/homepage.dart';
import 'package:coffe_app_ui_dark/ui/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Coffe App UI Dark',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const SplashScreen(),
    );
  }
}
