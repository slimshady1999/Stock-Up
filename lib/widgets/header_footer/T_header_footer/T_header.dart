import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:stockup/controllers/navigation_pages_controller/landing_pages_navigation.dart";
import "package:stockup/widgets/custom_colors.dart";
import "package:stockup/widgets/menus/T_menu/T_menu.dart";

//-- Desktop Landing Page
tabletHeaderPage(BuildContext context) {
  final landingPageController = Get.put(LandingPagesNavigationController());
  return Container(
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
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width / 6.5,
                  child: Image.asset(
                    "assets/images/whitelogo1.png",
                    fit: BoxFit.cover,
                  ),
                ),

                //-- Menu
                tabletMenu(context),

                //-- Buttons
                Container(
                  height: 35,
                  margin: const EdgeInsets.only(right: 5),
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Color(white), width: 1.6),
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
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //+ -- Landing Pages
        Obx(
          () => Expanded(
            child:
                landingPageController.tabletLandingPages[landingPageController
                    .currentPage
                    .value],
          ),
        ),
      ],
    ),
  );
}
