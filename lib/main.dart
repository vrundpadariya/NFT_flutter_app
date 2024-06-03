import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftapp/app/views/login/views/login.dart';
import 'package:nftapp/app/views/splash_screen/Splash_screen.dart';

import 'app/views/intro_screen/views/intro.dart';
import 'app/views/signup/views/signup.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/signup",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "/intro",
          page: () => const Intro(),
        ),
        GetPage(
          name: "/login",
          page: () => login_page(),
        ),
        GetPage(
          name: "/",
          page: () =>  Signup(),
        ),
      ],
    ),
  );
}
