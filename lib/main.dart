import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nftapp/app/views/splash_screen/Splash_screen.dart';

import 'app/views/intro_screen/views/intro.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: "/intro",
          page: () => Intro(),
        ),
      ],
    ),
  );
}
