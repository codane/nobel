import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nobel/widgets/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final containerHeight = MediaQuery.of(context).size.height * 0.3;
    final containerWidth = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      backgroundColor: const Color(0xffA4C2A5),
      body: Center(
        child: SizedBox(
          height: containerHeight,
          width: containerWidth,
          child: Image.asset("assets/laurel_wreath.png"),
        ),
      ),
    );
  }
}
