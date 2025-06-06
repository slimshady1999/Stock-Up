import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

final customTheme = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    circularTrackColor: Colors.black,
    refreshBackgroundColor: Colors.yellow,
    trackGap: 2.5,
    linearTrackColor: Colors.blueAccent,
  ),
  colorScheme: ColorScheme.fromSeed(
    primary: const Color(white),
    secondary: const Color(purpleColor), //const Color.fromARGB(255, 82, 3, 96),
    seedColor: const Color(purpleColor),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: Color(black),
    ),

    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: Color(black),
    ),
    bodyLarge: TextStyle(
      fontSize: 15.5,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: Color(black),
    ),
    titleMedium: TextStyle(
      fontSize: 32.5,
      height: 1.2,
      fontWeight: FontWeight.w900,
      fontFamily: 'Rubik',
      color: Color(black),
    ),
    titleLarge: TextStyle(
      fontSize: 42.5,
      fontWeight: FontWeight.w900,
      fontFamily: 'Rubik',
      color: Color(black),
    ),
  ),
);
