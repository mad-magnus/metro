import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'language.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN = "Login";

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Language();
      },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Expanded(
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
                child:Image.asset('assets/images/Patna_Metro.png')
            ),
          ),
        ),
      ),
    );
  }
}
