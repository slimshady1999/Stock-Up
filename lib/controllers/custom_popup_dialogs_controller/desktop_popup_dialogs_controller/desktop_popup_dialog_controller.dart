import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/controllers/custom_popup_dialogs_controller/desktop_popup_dialogs_controller/desktop_register_popup.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

class DesktopPopupDialogController extends GetxController {
  //-- Newsletter Popup
  static newsletterPopup() {
    return showDialog(
      context: Get.context!,
      builder:
          (context) => SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width / 2.9,
                  decoration: BoxDecoration(
                    color: Color(white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //-- Back Button
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.cancel,
                            color: Color(black),
                            size: 35,
                          ),
                        ),
                      ),
                      //-- logo
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width / 7.5,
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),

                      //-- Text 1
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Let us introduce ourselves',
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
                          ),
                        ),
                      ),

                      //-- Text 2
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Sign up to learn more and become a member of community, Enjoy access to our latest drops and exclusive offers before everyone else.',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.6,
                          ),
                        ),
                      ),

                      //-- Form
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 250,
                              child: Form(
                                child: Material(
                                  child: TextFormField(
                                    cursorColor: Color(black),
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(darkContainerColor),
                                      hintText: "Email",
                                      hintStyle:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                      suffixIcon: Icon(
                                        Icons.mail,
                                        size: 20,
                                        color: Color(red),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 120,
                              color: Color(black),
                              child: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Subscribe',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Color(white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Text 3
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 20,
                          right: 20,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          'By signing up to our newsletter',
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),

                      //-- Text 4
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
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
                ),
              ],
            ),
          ),
    );
  }

  //-- User Role Popup
  static userRolePopup() {
    return showDialog(
      context: Get.context!,
      builder:
          (context) => SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width / 2.9,
                  decoration: BoxDecoration(
                    color: Color(white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //-- Back Button
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.cancel,
                            color: Color(black),
                            size: 35,
                          ),
                        ),
                      ),
                      //-- logo
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width / 7.5,
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),

                      //-- Text 1
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Become a member today!',
                          style: Theme.of(context).textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),

                      //-- Regular user button
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(purpleColor),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              Get.back();
                              DesktopRegisterPopup.desktopRegularUserRegisterPopup();
                            },
                            child: Center(
                              child: Text(
                                'REGISTER',
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

                      //-- Become a tutor button
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 5.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(black),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              Get.back();
                              DesktopRegisterPopup.desktopTutorRegisterPopup();
                            },
                            child: Center(
                              child: Text(
                                'BECOME A TUTOR',
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

                      //-- Sell codes button
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
                              Get.back();
                              DesktopRegisterPopup.desktopSourceCodeSaleRegisterPopup();
                            },
                            child: Center(
                              child: Text(
                                'SELL SOURCE CODES',
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

                      //-- Text 3
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
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
                          top: 10,
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
                ),
              ],
            ),
          ),
    );
  }
}
