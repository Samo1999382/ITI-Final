import 'package:flutter/material.dart';
import 'package:test2/screens/HomeScreen/home.dart';
import 'package:test2/screens/NavScreen/Nav.dart';
import 'package:test2/screens/ProductsScreen/Products.dart';
import 'package:test2/screens/ProfileScreen/profile.dart';
import 'package:test2/screens/SearchScreen/SearchScreen.dart';
import 'package:test2/screens/loginScreen/logInScreen.dart';
import 'package:test2/screens/splashScreen/splash.dart';
import 'package:test2/widgets/ProductsWidgets.dart';

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
      home: MainNavigationScreen(),
    );
  }
}