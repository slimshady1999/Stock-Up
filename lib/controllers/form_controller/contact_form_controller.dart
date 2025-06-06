import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactFormController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final messageController = TextEditingController();
  final formGlobalkey = GlobalKey<FormState>();
  final selectedIssuesController = "".obs;
  final selectedLocationController = "".obs;

  //-- Website Problems lIst
  List<String> websiteIssuesList = [
    "Having problems registering an account",
    "Can't login to my account",
    "Can't access my dashboard",
    "Can't verify my account",
    "Can't upload video courses",
    "Can't make payments",
    "Streaming services not responding",
    "Source Codes not displaying",
  ];

  //-- Location Lists
  List<String> locationList = ["Riverstate", "Lagos"];

  //-- function for website problems dropdown
  void websiteIssues(String? newValue) {
    if (newValue != null) {
      selectedIssuesController.value = newValue;
    }
  }

  //-- function for location dropdown
  void locationDropdown(String? newValue) {
    if (newValue != null) {
      selectedLocationController.value = newValue;
    }
  }
}
