import 'package:flutter/material.dart';
import 'dart:async';

import 'pages/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String imageLogoName = 'assets/splash.png';

    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageLogoName),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
