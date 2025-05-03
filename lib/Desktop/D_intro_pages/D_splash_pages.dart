import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/pages/landing_pages/landing_page.dart';
import 'package:stockup/widgets/custom_colors.dart';

desktopSplashScreen(BuildContext context) {
  Future.delayed(const Duration(seconds: 10), () {
    Get.offAll(() => LandingPage());
  });
  return Container(
    height: double.infinity,
    width: double.infinity,
    color: Color(black),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //-- Logo
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width / 4.2,
          child: Image.asset("assets/images/whitelogo1.png", fit: BoxFit.cover),
        ),

        //-- Progress bar
        Container(
          width: MediaQuery.of(context).size.width / 5.2,
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: LinearProgressIndicator(
            color: Color(purpleColor),
            backgroundColor: Color(lightBlack),
          ),
        ),
      ],
    ),
  );
}
