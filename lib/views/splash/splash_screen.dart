import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        onBoardRoute,
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: Container(),
    );
  }
}
