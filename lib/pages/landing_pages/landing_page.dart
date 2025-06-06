import 'package:flutter/material.dart';
import 'package:stockup/widgets/header_footer/desktop_header_footer/desktop_header.dart';
import 'package:stockup/widgets/header_footer/M_header_footer/M_header.dart';
import 'package:stockup/widgets/header_footer/T_header_footer/T_header.dart';
import 'package:stockup/widgets/screen_sizes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, contrainst) {
          if (contrainst.maxWidth > desktopScreenSize) {
            return desktopLandingPageHeader(context);
          } else if (contrainst.maxWidth > tabletScreenSize &&
              contrainst.maxWidth < desktopScreenSize) {
            return tabletHeaderPage(context);
          } else {
            return MobileHeaderPage();
          }
        },
      ),
    );
  }
}
