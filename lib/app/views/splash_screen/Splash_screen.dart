import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      // Get.toNamed('/intr');
    });
    return SafeArea(child: Scaffold(
        backgroundColor: const Color(0xfff4f7fb),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "NFThis",
                  style: TextStyle(),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "asset/splash_screen-removebg.png",
                    ),
                  ),
                ),
              ),
            )
          ],
        ));)
  }
}
