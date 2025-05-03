import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:stockup/controllers/navigation_pages_controller/landing_pages_navigation.dart";
import "package:stockup/widgets/custom_colors.dart";
import "package:stockup/widgets/menus/D_menu/D_menu.dart";

//-- Desktop Landing Page
desktopLandingPageHeader(BuildContext context) {
  final landingPageController = Get.put(LandingPagesNavigationController());
  return Container(
    color: Theme.of(context).colorScheme.primary,
    child: Column(
      children: [
        //-- SideBar
        Expanded(
          child: Container(
            decoration: BoxDecoration(),
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
                        child: Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      //-- Menu
                      desktopMenu(context),
                    ],
                  ),

                  //-- Buttons
                  Row(
                    children: [
                      Container(
                        height: 42,
                        margin: const EdgeInsets.only(right: 10),
                        width: 170,
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
                            onTap: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.login_sharp,
                                    color: Color(purpleColor),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Login / Signup',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //-- Contact Us Button
                      Container(
                        height: 42,
                        margin: const EdgeInsets.only(right: 10),
                        width: 170,
                        child: Material(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(purpleColor),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(7),
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Contact Us',
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
