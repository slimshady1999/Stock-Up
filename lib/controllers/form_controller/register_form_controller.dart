import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterFormController extends GetxController {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final phoneNumber = TextEditingController();
  final wordOfEncouragementController = TextEditingController();
  final bioController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final countryStateController = TextEditingController();
  final registerGlobalKey = GlobalKey<FormState>();
  final selectedGenderController = "".obs;
  final selectedTutoringCoursesController = "".obs;
  final selectedSourceCodeSoftwareController = "".obs;
  final profilePicture = "".obs;
  final countryState = "".obs;
  DateTime? selectedDate;

  //-- Program Lists

  List<String> tutoringCoursesList = [
    "Cloud Computing",
    "Cyber Scurity",
    "Web Development",
    "Mobile App Development",
    "DevOps",
    "Networking",
    "Linux System Admin",
    "Machine Learning",
    "Data Science",
    "Vocational Skills",
    "Artificial Intelligence(A.I)",
    "No-Code Development",
  ];

  List<String> countryStateList = [
    "Abia",
    "Adamawa",
    "Akwa Ibom",
    "Anambra",
    "Bauchi",
    "Bayelsa",
    "Benue",
    "Borno",
    "Cross River",
    "Delta",
    "Ebonyi",
    "Edo",
    "Ekiti",
    "Enugu",
    "FCT - Abuja",
    "Gombe",
    "Imo",
    "Jigawa",
    "Kaduna",
    "Kano",
    "Katsina",
    "Kebbi",
    "Kogi",
    "Kwara",
    "Lagos",
    "Nasarawa",
    "Niger",
    "Ogun",
    "Ondo",
    "Osun",
    "Oyo",
    "Plateau",
    "Rivers",
    "Sokoto",
    "Taraba",
    "Yobe",
    "Zamfara",
  ];

  List<String> genderList = ["Male", "Female"];

  List<String> sourceCodesList = [
    "Mobile Development Scrips",
    "Web Development Scripts",
    "PHP Scripts",
  ];

  //-- function for gender dropdown
  void genderDropdownSelected(String? newValue) {
    if (newValue != null) {
      selectedGenderController.value = newValue;
    }
  }

  //-- function for country state dropdown
  void countryStateDropdown(String? newValue) {
    if (newValue != null) {
      countryState.value = newValue;
    }
  }

  //-- Function for tutor programs
  void tutorCourses(String? newValue) {
    if (newValue != null) {
      selectedTutoringCoursesController.value = newValue;
    }
  }

  //-- Function for Source codes type
  void sourceCodeSelected(String? newValue) {
    if (newValue != null) {
      selectedSourceCodeSoftwareController.value = newValue;
    }
  }

  //-- Function for source Codes
  void sourceCodesTypeSelected(String? newValue) {
    if (newValue != null) {
      selectedSourceCodeSoftwareController.value = newValue;
    }
  }

  void displayDatePicker() {
    showDatePicker(
      barrierColor: Colors.red,
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      selectedDate = pickedDate;
      //dateOfBirthController.text = DateFormat("yyyy-MM-dd").format
    });
  }
}
