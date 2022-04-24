import 'package:flutter/material.dart';
import 'package:shop_smartly/Screens/SignUp/signup_screen.dart';
import 'package:shop_smartly/Screens/Welcome/welcome_screen.dart';
import 'package:shop_smartly/constants.dart';

import 'Screens/Login/login_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}