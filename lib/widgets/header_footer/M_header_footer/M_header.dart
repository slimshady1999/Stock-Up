import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:stockup/controllers/navigation_pages_controller/landing_pages_navigation.dart";
import "package:stockup/widgets/custom_colors.dart";
import "package:stockup/widgets/menus/M_menu/M_menu.dart";

//-- Desktop Landing Page
class MobileHeaderPage extends StatelessWidget {
  const MobileHeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final landingPageController = Get.put(LandingPagesNavigationController());
    return Scaffold(
      key: landingPageController.drawerKey,
      drawer: mobileMenu(context),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            //-- App Bar
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //-- Logo
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/whitelogo1.png"),
                        ),
                      ),
                    ),

                    // //-- Menu
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(lightBlack),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            //-- Buttons
                            Container(
                              height: 27,
                              margin: const EdgeInsets.only(right: 5),
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  color: Color(white),
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
                                    child: Text(
                                      'Login',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                landingPageController.drawerKey.currentState!
                                    .openDrawer();
                              },
                              child: Container(
                                height: 30,
                                width: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(black),
                                ),
                                child: Icon(
                                  Icons.menu_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // -- Landing Pages
            // Obx(
            //   () => Expanded(
            //     child:
            //         landingPageController.tabletLandingPages[landingPageController
            //             .currentPage
            //             .value],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

/*
mobileLandingPage(BuildContext context) {
  final landingPageController = Get.put(LandingPagesNavigationController());
  return Scaffold(
    endDrawer: mobileMenu(context),
    body: Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          //-- App Bar
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //-- Logo
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/whitelogo1.png"),
                      ),
                    ),
                  ),

                  //-- Menu
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(lightBlack),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        children: [
                          //-- Buttons
                          Container(
                            height: 27,
                            margin: const EdgeInsets.only(right: 5),
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: Color(white),
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
                                  child: Text(
                                    'Login',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              landingPageController.drawerKey.currentState!
                                  .openEndDrawer();
                            },
                            child: Container(
                              height: 30,
                              width: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(black),
                              ),
                              child: Icon(
                                Icons.menu_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // -- Landing Pages
          // Obx(
          //   () => Expanded(
          //     child:
          //         landingPageController.tabletLandingPages[landingPageController
          //             .currentPage
          //             .value],
          //   ),
          // ),
        ],
      ),
    ),
  );
}*/
