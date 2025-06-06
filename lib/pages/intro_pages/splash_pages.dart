import 'package:flutter/material.dart';
import 'package:stockup/Desktop_Version/desktop_intro_pages/desktop_splash_pages.dart';
import 'package:stockup/Mobile_Version/M_intro_pages/M_splash_pages.dart';
import 'package:stockup/Tablet_Version/T_intro_pages/T_splash_screen.dart';
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
