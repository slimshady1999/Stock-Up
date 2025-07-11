import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/Desktop_Version/landing_page/desktop_about_us_page.dart';
import 'package:stockup/Desktop_Version/landing_page/desktop_contact_page.dart';
import 'package:stockup/Desktop_Version/landing_page/desktop_courses_page.dart';
import 'package:stockup/Desktop_Version/landing_page/desktop_homepage.dart';
import 'package:stockup/Desktop_Version/landing_page/desktop_policy_page.dart';
import 'package:stockup/Desktop_Version/landing_page/desktop_source_code_page.dart';
import 'package:stockup/Tablet_Version/landing_pages/T_homepage.dart';

class LandingPagesNavigationController extends GetxController {
  Rx<int> currentPage = 0.obs;
  var selectedList = List.generate(7, (_) => false.obs);
  toNextPage(int index) {
    currentPage.value = index;
    //isSelected.toggle();
    selectedList[index].toggle();
  }

  tapped(int index) {
    selectedList[index].toggle();
  }

  //-- DesktopLanding pages
  final List<Widget> desktopLandingPages = [
    DesktopHomepage(),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
    ),
    DesktopAboutUsPage(),
    DesktopPolicyPage(),
    DesktopContactPage(),
  ];

  //-- DesktopLanding pages
  final List<Widget> tabletLandingPages = [
    TabletHomepage(),

    //-- Courses Page
    // DesktopCoursePage(),
    SizedBox(height: 200, width: 200, child: Text("1")),
    SizedBox(height: 200, width: 200, child: Text("2")),
    SizedBox(height: 200, width: 200, child: Text("3")),
    SizedBox(height: 200, width: 200, child: Text("5")),
  ];

  //-- Mobile Landing Pages
  //-- Drawer key
  final drawerKey = GlobalKey<ScaffoldState>();
  final List<Widget> mobileLandingPages = [
    TabletHomepage(),
    SizedBox(height: 200, width: 200, child: Text("1")),
    SizedBox(height: 200, width: 200, child: Text("2")),
    SizedBox(height: 200, width: 200, child: Text("3")),
    SizedBox(height: 200, width: 200, child: Text("5")),
  ];
}
