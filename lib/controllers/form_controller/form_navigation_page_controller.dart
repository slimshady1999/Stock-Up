import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/Desktop_Version/desktop_auth_pages/desktop_user_register_details_page.dart';

class FormNavigationPageController extends GetxController {
  PageController pageViewController = PageController();
  Rx<int> currentFormSection = 0.obs;
  Rx<bool> isLastFormSection = false.obs;

  void toNextSection() {
    pageViewController.nextPage(
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  void onLastformSection() {
    Get.to(() => DesktopUserRegisterDetailsPage());
  }
}
