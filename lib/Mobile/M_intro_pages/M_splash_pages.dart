import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';

mobileSplashScreen(BuildContext context) {
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
          width: MediaQuery.of(context).size.width / 2.3,
          child: Image.asset("assets/images/logo.png", fit: BoxFit.cover),
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
