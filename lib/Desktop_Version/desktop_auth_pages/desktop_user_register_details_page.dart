import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/controllers/form_controller/register_form_controller.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';
import 'package:stockup/widgets/loading_screens/desktop_loading_screen/desktop_loading_screen.dart';

class DesktopUserRegisterDetailsPage extends StatelessWidget {
  const DesktopUserRegisterDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterFormController());
    final loadingDialog = Get.put(DesktopLoadingScreen());
    return Scaffold(
      backgroundColor: Color(darkContainerColor),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 35, left: 30, bottom: 35, right: 10),
          height: MediaQuery.of(context).size.height,
          color: Color(darkContainerColor),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(darkContainerColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //-- Profile Section 1
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 3.6,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Color(white),
                    border: Border(
                      right: BorderSide(color: Colors.white, width: 5.5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Cover Photo Layout | The Profile Picture | Details
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.2,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            //-- Cover Photo Layout
                            Container(
                              height: MediaQuery.of(context).size.height / 8.5,
                              width: double.infinity,
                              color: Color(purpleColor),
                            ),

                            //-- Profile Picture | Name | User Role
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //-- Profile Picture
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: CircleAvatar(
                                      radius: 55,
                                      backgroundImage: AssetImage(
                                        "assets/images/profilepic1.jpeg",
                                      ),
                                    ),
                                  ),

                                  //-- Name
                                  Padding(
                                    padding: const EdgeInsets.only(top: 9.5),
                                    child: Text(
                                      controller.nameController.text.toString(),
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ),

                                  //-- User Roles
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Text(
                                            "User Engagement: ",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodyMedium,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(green),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                3.5,
                                              ),
                                              child: Text(
                                                "sell source codes",
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  color: Color(white),
                                                  fontWeight: FontWeight.w600,
                                                ),
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
                          ],
                        ),
                      ),

                      //-- Personal Information
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Personal Information",
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Username:",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Color(black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                controller.usernameController.text,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.copyWith(
                                  color: Color(black),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Age:",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Color(black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                "28",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.copyWith(
                                  color: Color(black),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Gender:",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Color(black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                "Male",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.copyWith(
                                  color: Color(black),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Experience Level:",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Color(black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                "60%",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.copyWith(
                                  color: Color(green),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Contact Information
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Contact Information",
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Email Address:",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Color(black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                controller.emailController.text,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.copyWith(
                                  color: Color(black),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Phone Number:",
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(color: Color(black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                "08143628680",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall!.copyWith(
                                  color: Color(black),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Programs
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Tags",
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),

                      //-- Program list
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.5),
                                child: Text(
                                  "Mobile Development Scrips",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall!.copyWith(
                                    color: Color(white),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //-- Program 2 Optional
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.5),
                                child: Text(
                                  "Web Development Scripts",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall!.copyWith(
                                    color: Color(white),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //-- Program 3 Optional
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 20),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.5),
                                child: Text(
                                  "PHP Scripts",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall!.copyWith(
                                    color: Color(white),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //-- Profile Section 2
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 3.6,
                  // margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Color(white)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- User Bio
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "User Bio",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, left: 20),
                        height: MediaQuery.of(context).size.height / 4.8,
                        width: MediaQuery.of(context).size.height / 2.0,
                        color: Color(darkContainerColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(""),
                        ),
                      ),

                      //-- Word of encouragement
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Encouragements",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, left: 20),
                        height: MediaQuery.of(context).size.height / 7.0,
                        width: MediaQuery.of(context).size.height / 2.0,
                        color: Color(darkContainerColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(""),
                        ),
                      ),

                      //-- Create account Button
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 45,
                          margin: EdgeInsets.only(top: 50),
                          width: MediaQuery.of(context).size.width / 4.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(purpleColor),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {
                                // Get.to(
                                //   transition: Transition.cupertinoDialog,
                                //   duration: Duration(seconds: 1),
                                //   ()=> DesktopRegisterPage()
                                // );
                              },
                              child: Center(
                                child: Text(
                                  'Create account',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //-- Make Changes Button
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 45,
                          margin: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width / 4.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(black)),
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(darkContainerColor),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {
                                loadingDialog.desktopLoadingScreenDialog();
                                // Get.offAll(
                                //   transition: Transition.cupertinoDialog,
                                //   duration: Duration(seconds: 1),
                                //   () => DesktopRegisterPage(),
                                // );
                              },
                              child: Center(
                                child: Text(
                                  'Make changes',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                              ),
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
      ),
    );
  }
}
