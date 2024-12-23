import 'package:flutter/material.dart';
import 'package:my_app/pages/onboarding.dart'; // Ensure this file exists.

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center, // Center all child widgets.
        children: [
          Positioned(
            top: 50, // Adjust position of the top image.
            child: Image.asset(
              'assets/3.png',
              width: 180,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/splash.jpeg',
              height: 250, // Ensure proper scaling.
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
