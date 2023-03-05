import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      elevation: 10,
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            color: Color(0xffD8DAD3), shape: BoxShape.circle),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
