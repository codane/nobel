import 'dart:async';

import 'package:flutter/material.dart';
import '../widgets/home_screen_grid_view.dart';
import '../widgets/home_screen_top.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


/* class HomeScreen extends StatelessWidget {
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
} */

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ConnectivityResult result;
  late StreamSubscription connectivitySubscription;
  bool hasConnection = false;

  @override
  void initState() {
    startStreaming();
    super.initState();
  }

  @override
  void dispose() {
    connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> checkInternetConnection() async {
    result = await Connectivity().checkConnectivity();
    if (result != ConnectivityResult.none) {
      hasConnection = true;
    } else {
      hasConnection = false;
     showInternetDialogBox();
    }
  }

  void showInternetDialogBox() {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
      title: const Text("No internet connection"),
      content: const Text("Check your internet connection"),
      actions: [
        TextButton(onPressed: () {
          Navigator.pop(context);
          checkInternetConnection();
        }, child: const Text("Try again"))
      ],
    ));
  }

  void startStreaming() {
    connectivitySubscription = Connectivity().onConnectivityChanged.listen((event) async { 
      checkInternetConnection();
    });
  }

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
