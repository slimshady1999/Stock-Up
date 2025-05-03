import 'package:flutter/material.dart';
import 'package:stockup/Desktop/D_intro_pages/D_splash_pages.dart';
import 'package:stockup/Mobile/M_intro_pages/M_splash_pages.dart';
import 'package:stockup/Tablet/T_intro_pages/T_splash_screen.dart';
import 'package:stockup/widgets/screen_sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > desktopScreenSize) {
          return desktopSplashScreen(context);
        } else if (constraints.maxWidth > tabletScreenSize &&
            constraints.maxWidth < desktopScreenSize) {
          return tableSplashScreen(context);
        } else {
          return mobileSplashScreen(context);
        }
      },
    );
  }
}
