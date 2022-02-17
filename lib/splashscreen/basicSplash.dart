import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_design_collection/homepage.dart';

class BasicSplash extends StatefulWidget {
  const BasicSplash({Key? key}) : super(key: key);

  @override
  _BasicSplashState createState() => _BasicSplashState();
}

class _BasicSplashState extends State<BasicSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
            image: AssetImage("img/splash1.png"), width: 150, height: 130),
      ),
    );
  }
}
