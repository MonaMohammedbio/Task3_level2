import 'package:advanced_task2/pages/Sign%20Up.dart';
import 'package:advanced_task2/pages/Signin.dart';
import 'package:advanced_task2/pages/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen()
    );
  }
}


