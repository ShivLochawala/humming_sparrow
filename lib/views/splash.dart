import 'dart:async';
import 'package:flutter/material.dart';
import 'package:humming_sparrow/views/home.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Home()
        )
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Image.asset('assets/images/humming_sparrow_logo.jpg',width: 80.0, height: 80),
    );
  }
}