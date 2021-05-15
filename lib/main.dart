import 'package:flutter/material.dart';
import 'package:humming_sparrow/views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Humming Sparrow Digital Solution Private Limited News App',
      home: SplashView(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(23, 50, 43, 1.0),
      ),
    );
  }
}

