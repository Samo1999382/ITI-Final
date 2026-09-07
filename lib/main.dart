import 'package:flutter/material.dart';
import 'package:test2/screens/loginScreen/logInScreen.dart';
import 'package:test2/screens/signUpScreen/signUpScreen.dart';
import 'package:test2/screens/splashScreen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: signUpScreen(),
    );
  }
}