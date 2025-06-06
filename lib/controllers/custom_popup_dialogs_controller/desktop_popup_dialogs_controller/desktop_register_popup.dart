import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:stockup/Desktop_Version/desktop_forms/desktop_register_form.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

class DesktopRegisterPopup extends GetxController {
  //-- Tutor Popup dialog
  static desktopTutorRegisterPopup() {
    return showDialog(
      context: Get.context!,
      builder:
          (context) => SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width / 2.7,
                  decoration: BoxDecoration(
                    color: Color(white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //-- Image
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/project1.jpg"),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Color(white),
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Text 1
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Become a Tutor',
                          style:
                              Theme.of(
                                context,
                              ).textTheme.titleMedium!.copyWith(),
                        ),
                      ),

                      //-- Forms
                      desktopTutorRegisterForm(context),

                      //-- Register button
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(green),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              // formNavgationcontroller
                              //     .toNextSection();
                            },
                            child: Center(
                              child: Text(
                                'Register',
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

                      //-- Google Register Button
                      Container(
                        height: 45,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(black)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          color: Color(white),
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/google.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: Text(
                                      'Register with Google',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //-- Text 3
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'By signing up on Stockup',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),

                      //-- Text 4
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              'You agree to our',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Terms',
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' & ',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Policies',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).animate(effects: [SlideEffect()]),
              ],
            ),
          ),
    );
  }

  //-- Source code sale register
  static desktopSourceCodeSaleRegisterPopup() {
    return showDialog(
      context: Get.context!,
      builder:
          (context) => SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width / 2.7,
                  decoration: BoxDecoration(
                    color: Color(white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //-- Image
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/newcode.jpg"),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Color(white),
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Text 1
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Sell source codes',
                          style:
                              Theme.of(
                                context,
                              ).textTheme.titleMedium!.copyWith(),
                        ),
                      ),

                      //-- Forms
                      desktopSourceCodeSaleRegisterForm(context),

                      //-- Register button
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(green),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              // formNavgationcontroller
                              //     .toNextSection();
                            },
                            child: Center(
                              child: Text(
                                'Register',
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

                      //-- Google Register Button
                      Container(
                        height: 45,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(black)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          color: Color(white),
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/google.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: Text(
                                      'Register with Google',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //-- Text 3
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'By signing up on Stockup',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),

                      //-- Text 4
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              'You agree to our',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Terms',
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' & ',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Policies',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).animate(effects: [SlideEffect()]),
              ],
            ),
          ),
    );
  }

  //-- Regular User register
  static desktopRegularUserRegisterPopup() {
    return showDialog(
      context: Get.context!,
      builder:
          (context) => SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width / 2.7,
                  decoration: BoxDecoration(
                    color: Color(white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //-- Image
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/newcode.jpg"),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Color(white),
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Text 1
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Sell source codes',
                          style:
                              Theme.of(
                                context,
                              ).textTheme.titleMedium!.copyWith(),
                        ),
                      ),

                      //-- Forms
                      desktopSourceCodeSaleRegisterForm(context),

                      //-- Register button
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(green),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              // formNavgationcontroller
                              //     .toNextSection();
                            },
                            child: Center(
                              child: Text(
                                'Register',
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

                      //-- Google Register Button
                      Container(
                        height: 45,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(black)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          color: Color(white),
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/google.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: Text(
                                      'Register with Google',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //-- Text 3
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'By signing up on Stockup',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),

                      //-- Text 4
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              'You agree to our',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Terms',
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' & ',
                              style: Theme.of(context).textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Policies',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).animate(effects: [SlideEffect()]),
              ],
            ),
          ),
    );
  }
}
