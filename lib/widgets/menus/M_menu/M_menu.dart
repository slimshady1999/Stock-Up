import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/controllers/navigation_pages_controller/landing_pages_navigation.dart';

mobileMenu(BuildContext context) {
  return Container(
    color: Colors.red,
    width: MediaQuery.of(context).size.width / 1.8,
    child: GetBuilder<LandingPagesNavigationController>(
      builder: (controller) {
        return ListView(
          children: [
            //-- home
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    //  landingController.toNextPage(0);
                  },

                  child: Center(
                    child: Text(
                      "Home",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 12.4,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-- Courses Page
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // landingController.toNextPage(1);
                  },

                  child: Center(
                    child: Text(
                      "Courses",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 12.4,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-- Go Live
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // landingController.toNextPage(2);
                  },

                  child: Center(
                    child: Text(
                      "Go Live",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 12.4,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-- About Us
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // landingController.toNextPage(3);
                  },

                  child: Center(
                    child: Text(
                      "About Us",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 12.4,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-- Policies
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // landingController.toNextPage(4);
                  },

                  child: Center(
                    child: Text(
                      "Policies",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 12.4,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}
