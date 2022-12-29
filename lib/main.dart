import 'package:flutter/material.dart';
import 'package:workshop/screens/basket_screen.dart';
import 'package:workshop/screens/navigation/home.dart';
import 'package:workshop/screens/libray_screen.dart';
import 'package:workshop/screens/product_info.dart';
import 'package:workshop/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Workshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (BuildContext context) {
          return const Home();
        },
        '/signup': (BuildContext context) {
          return const SignUpScreen();
        },
        '/home': (BuildContext context) {
          return const Home();
        },
      },
    );
  }
}
