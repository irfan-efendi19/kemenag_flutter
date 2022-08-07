import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:aplikasi_haji/tutor.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Tutorial(),
      backgroundColor: Colors.white,
      image: Image.asset('assets/splash.png'),
      photoSize: 100.0,
    );
  }
}
