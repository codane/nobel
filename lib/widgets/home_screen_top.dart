import 'package:flutter/material.dart';

class HomeScreenTop extends StatelessWidget {
  const HomeScreenTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, bottom: 30),
      child: Text(
        "Choose the category and start exploring the world of Nobel laureates🥳",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
