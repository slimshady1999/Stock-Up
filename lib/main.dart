import 'package:flutter/material.dart';
import 'package:stockup/pages/landing_pages/landing_page.dart';
//import 'package:stockup/pages/intro_pages/splash_pages.dart';
import 'package:get/get.dart';
import 'package:stockup/widgets/custom_themes_data/custom_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      theme: customTheme,
    ),
  );
}
