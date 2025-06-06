import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:stockup/Desktop_Version/desktop_auth_pages/desktop_login_page.dart";
import "package:stockup/controllers/custom_popup_dialogs_controller/desktop_popup_dialogs_controller/desktop_popup_dialog_controller.dart";
import "package:stockup/controllers/navigation_pages_controller/landing_pages_navigation.dart";
import "package:stockup/widgets/custom_themes_data/custom_colors.dart";
import "package:stockup/widgets/menus/desktop_menu/desktop_menu.dart";

//-- Desktop Landing Page
desktopLandingPageHeader(BuildContext context) {
  final landingPageController = Get.put(LandingPagesNavigationController());
  return Container(
    color: Theme.of(context).colorScheme.primary,
    child: Column(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //-- Logo
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 40,
                        width: MediaQuery.of(context).size.width / 7.5,
                        decoration: BoxDecoration(
                          // border: Border(
                          //   bottom: BorderSide(color: Color(lightBlack)),
                          // ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.offAll(() => desktopLandingPageHeader(context));
                          },
                          child: Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //-- Menu
                      desktopMenu(context),
                    ],
                  ),

                  //-- Buttons
                  Row(
                    children: [
                      //-- Subscribe to news letter Button
                      GestureDetector(
                        onTap: () {
                          DesktopPopupDialogController.newsletterPopup();
                        },
                        child: Container(
                          height: 32,
                          margin: const EdgeInsets.only(right: 10),
                          // width: 210,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(black)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 1, left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //-- Text
                                Text(
                                  'Subscribe for Newsletters',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: 10),

                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Color(black),
                                  child: Icon(
                                    Icons.email,
                                    color: Color(white),
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //-- Login Button
                      Container(
                        height: 42,
                        margin: const EdgeInsets.only(right: 10),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: Color(purpleColor),
                            width: 1.6,
                          ),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(7),
                            onTap: () {
                              Get.to(
                                transition: Transition.cupertinoDialog,
                                duration: Duration(seconds: 1),
                                () => DesktopLoginPage(),
                              );
                            },
                            child: Center(
                              child: Text(
                                'Login',
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //-- Register Button
                      Container(
                        height: 42,
                        margin: const EdgeInsets.only(right: 10),
                        width: 100,
                        child: Material(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(purpleColor),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(7),
                            onTap: () {
                              DesktopPopupDialogController.userRolePopup();
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        //-- Landing Pages
        Obx(
          () => Expanded(
            flex: 8,
            child:
                landingPageController.desktopLandingPages[landingPageController
                    .currentPage
                    .value],
          ),
        ),
      ],
    ),
  );
}
