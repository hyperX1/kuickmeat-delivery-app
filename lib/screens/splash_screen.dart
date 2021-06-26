import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kuickmeat_delivery_app/screens/home_screen.dart';
import 'package:kuickmeat_delivery_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      FirebaseAuth.instance.authStateChanges().listen((User user) {
        if (user == null) {
          Navigator.pushReplacementNamed(
            context,
            LoginScreen.id,
          );
        } else {
          Navigator.pushReplacementNamed(
            context,
            HomeScreen.id,
          );
        }
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            curve: Curves.easeIn,
            child: Image.asset(
              'images/logo.png',
              height: 350,
              width: 350,
            ),
          ),
        ),
    );
  }
}
