import 'dart:async';
import 'package:cmp_walkthrough/SplashScreen/create_plate.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const CreateYourPlate()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final dim = MediaQuery.of(context).size;
    return Scaffold(
        body: Image.asset(
      'asset/images/Splashscreen.png',
      fit: BoxFit.fill,
      height: dim.height,
      width: dim.width,
    ));
  }
}
