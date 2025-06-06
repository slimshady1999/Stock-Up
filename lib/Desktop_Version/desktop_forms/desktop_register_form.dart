import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/controllers/form_controller/register_form_controller.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

final formController = Get.put(RegisterFormController());

//-- Tutor Register Form
desktopTutorRegisterForm(BuildContext context) {
  return Material(
    color: Theme.of(context).colorScheme.primary,
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //-- Ful Name form
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      height: 45,
                      //width: MediaQuery.of(context).size.width / 4,
                      child: TextFormField(
                        controller: formController.nameController,
                        cursorColor: Color(black),
                        style: Theme.of(context).textTheme.bodySmall,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0x3C9E9E9E),
                          hintText: "Name",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          prefixIcon: Icon(Icons.person, size: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //-- Username form
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 4,
                      child: TextFormField(
                        controller: formController.usernameController,
                        cursorColor: Color(black),
                        style: Theme.of(context).textTheme.bodySmall,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(darkContainerColor),
                          hintText: "Username",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          prefixIcon: Icon(Icons.person_2, size: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  //-- Email form
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          controller: formController.emailController,
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Email",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.mail, size: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Phone number
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 5.3,
                        child: TextFormField(
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Phone Number",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.phone, size: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- Password form
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          controller: formController.passwordController,
                          obscureText: true,
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Password",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Gender
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(
                          () => DropdownButton<String>(
                            hint: Text(
                              "select a gender",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            // borderRadius: BorderRadius.circular(15),
                            style: Theme.of(context).textTheme.bodyMedium,
                            value:
                                formController.selectedGenderController.value ==
                                        ""
                                    ? null
                                    : formController
                                        .selectedGenderController
                                        .value,
                            underline: Spacer(),
                            items:
                                formController.genderList
                                    .map(
                                      (item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(item),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                formController.genderDropdownSelected(
                                  newValue.toString(),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Obx(
                        () => DropdownButton(
                          hint: Text(
                            "Select Tutor Program",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          borderRadius: BorderRadius.circular(15),
                          style: Theme.of(context).textTheme.bodyMedium,
                          underline: Spacer(),
                          value:
                              formController
                                          .selectedTutoringCoursesController
                                          .value ==
                                      ""
                                  ? null
                                  : formController
                                      .selectedTutoringCoursesController
                                      .value,
                          items:
                              formController.tutoringCoursesList
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              formController.tutorCourses(value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Obx(
                        () => DropdownButton(
                          hint: Text(
                            "Select your state",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          borderRadius: BorderRadius.circular(15),
                          style: Theme.of(context).textTheme.bodyMedium,
                          underline: Spacer(),
                          value:
                              formController.countryState.value == ""
                                  ? null
                                  : formController.countryState.value,
                          items:
                              formController.countryStateList
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              formController.countryStateDropdown(value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//-- Source code register form
desktopSourceCodeSaleRegisterForm(BuildContext context) {
  return Material(
    color: Theme.of(context).colorScheme.primary,
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //-- Ful Name form
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      height: 45,
                      //width: MediaQuery.of(context).size.width / 4,
                      child: TextFormField(
                        controller: formController.nameController,
                        cursorColor: Color(black),
                        style: Theme.of(context).textTheme.bodySmall,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0x3C9E9E9E),
                          hintText: "Name",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          prefixIcon: Icon(Icons.person, size: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //-- Username form
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 4,
                      child: TextFormField(
                        controller: formController.usernameController,
                        cursorColor: Color(black),
                        style: Theme.of(context).textTheme.bodySmall,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(darkContainerColor),
                          hintText: "Username",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          prefixIcon: Icon(Icons.person_2, size: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  //-- Email form
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          controller: formController.emailController,
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Email",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.mail, size: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Phone number
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 5.3,
                        child: TextFormField(
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Phone Number",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.phone, size: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- Password form
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          controller: formController.passwordController,
                          obscureText: true,
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Password",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Gender
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(
                          () => DropdownButton<String>(
                            hint: Text(
                              "select a gender",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            // borderRadius: BorderRadius.circular(15),
                            style: Theme.of(context).textTheme.bodyMedium,
                            value:
                                formController.selectedGenderController.value ==
                                        ""
                                    ? null
                                    : formController
                                        .selectedGenderController
                                        .value,
                            underline: Spacer(),
                            items:
                                formController.genderList
                                    .map(
                                      (item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(item),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                formController.genderDropdownSelected(
                                  newValue.toString(),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Obx(
                        () => DropdownButton(
                          hint: Text(
                            "Select sale script",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          borderRadius: BorderRadius.circular(15),
                          style: Theme.of(context).textTheme.bodyMedium,
                          underline: Spacer(),
                          value:
                              formController
                                          .selectedSourceCodeSoftwareController
                                          .value ==
                                      ""
                                  ? null
                                  : formController
                                      .selectedSourceCodeSoftwareController
                                      .value,
                          items:
                              formController.sourceCodesList
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              formController.sourceCodesTypeSelected(value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Obx(
                        () => DropdownButton(
                          hint: Text(
                            "Select your state",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          borderRadius: BorderRadius.circular(15),
                          style: Theme.of(context).textTheme.bodyMedium,
                          underline: Spacer(),
                          value:
                              formController.countryState.value == ""
                                  ? null
                                  : formController.countryState.value,
                          items:
                              formController.countryStateList
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              formController.countryStateDropdown(value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//-- Regular user register form
desktopRegularUserRegisterForm(BuildContext context) {
  return Material(
    color: Theme.of(context).colorScheme.primary,
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                //-- Ful Name form
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: SizedBox(
                      height: 45,
                      //width: MediaQuery.of(context).size.width / 4,
                      child: TextFormField(
                        controller: formController.nameController,
                        cursorColor: Color(black),
                        style: Theme.of(context).textTheme.bodySmall,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0x3C9E9E9E),
                          hintText: "Name",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          prefixIcon: Icon(Icons.person, size: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //-- Username form
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 4,
                      child: TextFormField(
                        controller: formController.usernameController,
                        cursorColor: Color(black),
                        style: Theme.of(context).textTheme.bodySmall,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(darkContainerColor),
                          hintText: "Username",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          prefixIcon: Icon(Icons.person_2, size: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  //-- Email form
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          controller: formController.emailController,
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Email",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.mail, size: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Phone number
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 5.3,
                        child: TextFormField(
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Phone Number",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.phone, size: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- Password form
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        height: 45,
                        //width: MediaQuery.of(context).size.width / 4,
                        child: TextFormField(
                          controller: formController.passwordController,
                          obscureText: true,
                          cursorColor: Color(black),
                          style: Theme.of(context).textTheme.bodySmall,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            hintText: "Password",
                            hintStyle: Theme.of(context).textTheme.bodySmall,
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Gender
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(
                          () => DropdownButton<String>(
                            hint: Text(
                              "select a gender",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            // borderRadius: BorderRadius.circular(15),
                            style: Theme.of(context).textTheme.bodyMedium,
                            value:
                                formController.selectedGenderController.value ==
                                        ""
                                    ? null
                                    : formController
                                        .selectedGenderController
                                        .value,
                            underline: Spacer(),
                            items:
                                formController.genderList
                                    .map(
                                      (item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(item),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                formController.genderDropdownSelected(
                                  newValue.toString(),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Obx(
                        () => DropdownButton(
                          hint: Text(
                            "Select sale script",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          borderRadius: BorderRadius.circular(15),
                          style: Theme.of(context).textTheme.bodyMedium,
                          underline: Spacer(),
                          value:
                              formController
                                          .selectedSourceCodeSoftwareController
                                          .value ==
                                      ""
                                  ? null
                                  : formController
                                      .selectedSourceCodeSoftwareController
                                      .value,
                          items:
                              formController.sourceCodesList
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              formController.sourceCodesTypeSelected(value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 45,
                      // width: MediaQuery.of(context).size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(darkContainerColor),
                      ),
                      child: Obx(
                        () => DropdownButton(
                          hint: Text(
                            "Select your state",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          padding: EdgeInsets.only(left: 10),
                          borderRadius: BorderRadius.circular(15),
                          style: Theme.of(context).textTheme.bodyMedium,
                          underline: Spacer(),
                          value:
                              formController.countryState.value == ""
                                  ? null
                                  : formController.countryState.value,
                          items:
                              formController.countryStateList
                                  .map(
                                    (items) => DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    ),
                                  )
                                  .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              formController.countryStateDropdown(value);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}



/*
desktopRegisterForm2(BuildContext context) {
  return Container(
    //color: Colors.blue,
    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
    width: MediaQuery.of(context).size.width / 4.0,
    child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //-- Age form | Phone Number
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //-- Phone Number form

              //-- Age
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 45,
                width: MediaQuery.of(context).size.width / 7.5,
                child: TextFormField(
                  cursorColor: Color(black),
                  style: Theme.of(context).textTheme.bodyMedium,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(darkContainerColor),
                    hintText: "Age",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    prefixIcon: Icon(Icons.person_2, size: 20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //-- Dropdown for gender & experience level
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //-- Experience Level
                Container(
                  margin: EdgeInsets.only(left: 0),
                  height: 45,
                  width: MediaQuery.of(context).size.width / 5.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(darkContainerColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => DropdownButton<String>(
                        hint: Text(
                          "Location",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        style: Theme.of(context).textTheme.bodyMedium,
                        underline: Spacer(),
                        value:
                            formController
                                        .selectedExperienceLevelController
                                        .value ==
                                    ""
                                ? null
                                : formController
                                    .selectedExperienceLevelController
                                    .value,
                        items:
                            formController.experienceLevelList
                                .map(
                                  (item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(item),
                                  ),
                                )
                                .toList(),
                        onChanged: (newValue) {
                          if (newValue != null) {
                            formController.experienceLevelDropdownSelected(
                              newValue,
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),

                //-- Gender Dropdown
                Container(
                  margin: EdgeInsets.only(left: 25),
                  height: 45,
                  width: MediaQuery.of(context).size.width / 7.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(darkContainerColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => DropdownButton<String>(
                        hint: Text(
                          "gender",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        style: Theme.of(context).textTheme.bodyMedium,
                        value:
                            formController.selectedGenderController.value == ""
                                ? null
                                : formController.selectedGenderController.value,
                        underline: Spacer(),
                        items:
                            formController.genderList
                                .map(
                                  (item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(item),
                                  ),
                                )
                                .toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            formController.genderDropdownSelected(
                              newValue.toString(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //-- User Role & Programs
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //-- Reason for joining
                Container(
                  margin: EdgeInsets.only(left: 0),
                  height: 45,
                  width: MediaQuery.of(context).size.width / 5.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(darkContainerColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => DropdownButton<String>(
                        hint: Text(
                          "user role",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        style: Theme.of(context).textTheme.bodyMedium,
                        underline: Spacer(),
                        value:
                            formController
                                        .selectedUserRoleDropdownController
                                        .value ==
                                    ""
                                ? null
                                : formController
                                    .selectedUserRoleDropdownController
                                    .value,
                        items:
                            formController.userRoleList
                                .map(
                                  (item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(item.toString()),
                                  ),
                                )
                                .toList(),
                        onChanged: (newValue) {
                          if (newValue != null) {
                            formController.userRoleDropdownSelected(newValue);
                          }
                        },
                      ),
                    ),
                  ),
                ),

                Obx(
                  () =>
                      formController.selectedUserRoleDropdownController.value ==
                              "Tutoring"
                          ? Container(
                            margin: EdgeInsets.only(left: 35),
                            height: 45,
                            // width: MediaQuery.of(context).size.width / 6.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(darkContainerColor),
                            ),
                            child: DropdownButton(
                              hint: Text(
                                "Select Tutor Program",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              padding: EdgeInsets.only(left: 10),
                              borderRadius: BorderRadius.circular(15),
                              style: Theme.of(context).textTheme.bodyMedium,
                              underline: Spacer(),
                              value:
                                  formController
                                              .selectedTutoringCoursesController
                                              .value ==
                                          ""
                                      ? null
                                      : formController
                                          .selectedTutoringCoursesController
                                          .value,
                              items:
                                  formController.tutoringCoursesList
                                      .map(
                                        (items) => DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        ),
                                      )
                                      .toList(),
                              onChanged: (String? value) {
                                if (value != null) {
                                  formController.tutorCourses(value);
                                }
                              },
                            ),
                          )
                          : formController
                                  .selectedUserRoleDropdownController
                                  .value ==
                              "Streaming Service"
                          ? Container(
                            margin: EdgeInsets.only(left: 35),
                            height: 45,
                            // width: MediaQuery.of(context).size.width / 6.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(darkContainerColor),
                            ),
                            child: DropdownButton(
                              hint: Text(
                                "Select Streaming Service",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              padding: EdgeInsets.only(left: 10),
                              borderRadius: BorderRadius.circular(15),
                              style: Theme.of(context).textTheme.bodyMedium,
                              underline: Spacer(),
                              value:
                                  formController
                                              .selectedStreamingServiceController
                                              .value ==
                                          ""
                                      ? null
                                      : formController
                                          .selectedStreamingServiceController
                                          .value,
                              items:
                                  formController.streamingServiceList
                                      .map(
                                        (items) => DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        ),
                                      )
                                      .toList(),
                              onChanged: (String? value) {
                                if (value != null) {
                                  formController.streamingServiceTypeSelected(
                                    value,
                                  );
                                }
                              },
                            ),
                          )
                          : formController
                                  .selectedUserRoleDropdownController
                                  .value ==
                              "sell source codes"
                          ? Container(
                            margin: EdgeInsets.only(left: 35),
                            height: 45,
                            // width: MediaQuery.of(context).size.width / 6.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(darkContainerColor),
                            ),
                            child: DropdownButton(
                              hint: Text(
                                "Select Source Code Type",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              padding: EdgeInsets.only(left: 10),
                              borderRadius: BorderRadius.circular(15),
                              style: Theme.of(context).textTheme.bodyMedium,
                              underline: Spacer(),
                              value:
                                  formController
                                              .selectedSourceCodeSoftwareController
                                              .value ==
                                          ""
                                      ? null
                                      : formController
                                          .selectedSourceCodeSoftwareController
                                          .value,
                              items:
                                  formController.sourceCodesList
                                      .map(
                                        (items) => DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        ),
                                      )
                                      .toList(),
                              onChanged: (String? value) {
                                if (value != null) {
                                  formController.sourceCodesTypeSelected(value);
                                }
                              },
                            ),
                          )
                          : Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "Awaiting user role selection",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
*/


/*
desktopRegisterForm3(BuildContext context) {
  return Container(
    // color: Colors.blue,
    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
    width: MediaQuery.of(context).size.width / 4.0,
    child: Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //-- Page Range
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //-- Icon
                CircleAvatar(
                  backgroundColor: Color(darkContainerColor),
                  radius: 10,
                  child: Text(
                    "1",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: Color(black)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  width: 40,
                  child: Divider(color: Color(black)),
                ),
                CircleAvatar(
                  backgroundColor: Color(darkContainerColor),
                  radius: 10,
                  child: Text(
                    "2",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: Color(black)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  width: 40,
                  child: Divider(color: Color(black)),
                ),
                CircleAvatar(
                  backgroundColor: Color(purpleColor),
                  radius: 10,
                  child: Text(
                    "3",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: Color(white)),
                  ),
                ),
              ],
            ),
          ),

          //-- About User
          SizedBox(height: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.8,
            width: MediaQuery.of(context).size.height / 2.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                cursorColor: Color(black),
                maxLength: 150,
                maxLines: 5,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  focusColor: Color(darkContainerColor),
                  hintText: "About yourself",
                  filled: true,
                  // hoverColor: Color.fromARGB(255, 246, 224, 255),
                  fillColor: Color(darkContainerColor),
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),

          //-- Word of encouragement
          SizedBox(
            height: MediaQuery.of(context).size.height / 7.0,
            width: MediaQuery.of(context).size.height / 2.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                cursorColor: Color(black),
                maxLength: 50,
                maxLines: 3,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: "Your words of encouragement?",
                  filled: true,
                  fillColor: Color(darkContainerColor),
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
*/
