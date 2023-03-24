import 'package:flutter/material.dart';
import '../widgets/home_screen_grid_view.dart';
import '../widgets/home_screen_top.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA4C2A5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 40,
              ),
              HomeScreenTop(),
              Expanded(
                child: HomeScreenGridView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
