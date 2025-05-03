import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/controllers/navigation_pages_controller/course_page_navigation_controller.dart';
import 'package:stockup/controllers/navigation_pages_controller/landing_pages_navigation.dart';
import 'package:stockup/widgets/custom_colors.dart';

final landingController = Get.put(LandingPagesNavigationController());

desktopMenu(BuildContext context) {
  return GetBuilder<LandingPagesNavigationController>(
    builder: (controller) {
      return SizedBox(
        width: MediaQuery.of(context).size.width / 2.3,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.5),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      landingController.toNextPage(0);
                    },
                    child: Text(
                      "Home",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.5),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      landingController.toNextPage(1);
                    },
                    child: Text(
                      "Courses",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 15.5),
              //   child: Material(
              //     color: Colors.transparent,
              //     child: InkWell(
              //       onTap: () {
              //         landingController.toNextPage(2);
              //       },
              //       child: Text(
              //         "Live",
              //         style: Theme.of(context).textTheme.bodyLarge,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 15.5),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      landingController.toNextPage(2);
                    },
                    child: Text(
                      "Source Codes",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.5),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      landingController.toNextPage(3);
                    },
                    child: Text(
                      "About Us",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.5),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      landingController.toNextPage(4);
                    },
                    child: Text(
                      "Policy",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

//-- Menu Listtile widget
Widget menuWidgets(
  BuildContext context,
  index,
  title,
  icon,
  selectedTileColor,
  onTapEvent,
  onHover,
) {
  return ListTile(
    title: title,
    leading: icon,
    selectedColor: selectedTileColor,
    onTap: onTapEvent,
    hoverColor: onHover,
  );
}

//  padding: const EdgeInsets.only(right: 20),
final controller = Get.put(CoursePageNavigationController());
//-- Destop Course Side Bar Menu
desktopSideBarCourseMenu(BuildContext context) {
  return Drawer(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: const Color.fromARGB(255, 249, 247, 255),
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SingleChildScrollView(
        child: GetBuilder<CoursePageNavigationController>(
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Search Bar
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 50,
                        width: 185,
                        child: TextField(
                          cursorColor: Colors.black,
                          style: Theme.of(context).textTheme.bodySmall,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, size: 17.5),
                            filled: true,
                            fillColor: Color(darkContainerColor),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(purpleColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //-- Software Development
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Software Development",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: MouseRegion(
                    onHover: (event) => controller.isHovering.value == true,
                    onExit: (event) => controller.isHovering.value == false,
                    child: ListTile(
                      hoverColor:
                          controller.isHovering.value
                              ? Colors.grey
                              : Color(purpleColor),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minTileHeight: 1,
                      onTap: () {
                        controller.toNextPage(0);
                      },

                      leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                      title: Text(
                        "Mobile Applications",
                        style:
                            controller.isHovering.value.obs.isTrue
                                ? Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(color: Colors.black)
                                : Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {
                      controller.toNextPage(1);
                    },
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Website Development",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Programming
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Programming Languages",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {
                      controller.toNextPage;
                    },
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Python",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Dart",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Ruby",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "C++",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Swift IOS",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Java",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Kotlin",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "JavaScript",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "C#",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Cyber Security
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Cyber Security",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "ComTIA",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Ethical Hacking",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Networking",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Kali Linux",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Cloud Computing
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Cloud Computing",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "DevOps",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Amazon Web Services(AWS)",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Google Cloud Platform(GCP)",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Microsoft Azure(Azure)",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Artificial Intelligence
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Artificial Intelligence",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Machine Learning & Algorithm",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Deep Learning With TensorFlow",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Natural language processing with python",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "computer vision with OpenCV",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Data Science
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Data Science",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Data science with python",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Data Analytics with Excel",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Machine Learning",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Database Management
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Database Management",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "MySQL Management",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Oracle Database Management",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Microsoft SQL Server Management",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "NoSQL Database Management",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Cosmetology
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Cosmetology",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Creative styling",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Hair Styling",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Nails Styling",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Computer Repairs
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Computer Engineering",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Computer Repairs",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Networking
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    "Computer Networking",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: ListTile(
                    hoverColor: Color(purpleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minTileHeight: 1,
                    titleTextStyle: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.copyWith(color: Colors.blue),
                    onTap: () {},
                    leading: Icon(Icons.circle, size: 7, color: Colors.grey),
                    title: Text(
                      "Networking Fundamentals",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ),
  );
}



//--

 /* ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: desktopLandingPageMenu.length,
              itemBuilder: (context, index) {
                final DesktopLandingPageMenu items = desktopLandingPageMenu[index];
                return SizedBox(
                  height: 50,
                  width: 110,
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      hoverColor: Color(lightBlack),
                      onTap: () {
                        landingController.toNextPage(index);
                      },
            
                      // leading: items.icon,
                      title: Text(
                        items.name.toString(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            */

//-- new

/*

Material(
                  color: Colors.transparent,
                  child: ListTile(
                    hoverColor: Color(lightBlack),
                    onTap: () {
                      landingController.toNextPage(0);
                    },
                    leading: Icon(Icons.home, color: Color(white), size: 17),
                    title: Text(
                      "Home",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Courses
                Material(
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () {
                      landingController.toNextPage(1);
                    },
                    leading: Icon(
                      Icons.menu_book,
                      color: Color(white),
                      size: 17,
                    ),
                    title: Text(
                      "Courses",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Go Live
                Material(
                  color: Colors.transparent,
                  child: ListTile(
                    hoverColor: Color(lightBlack),
                    onTap: () {
                      landingController.toNextPage(2);
                    },
                    leading: Icon(Icons.mic, color: Color(white), size: 17),
                    title: Text(
                      "Go Live",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Projects
                Material(
                  color: Colors.transparent,
                  child: ListTile(
                    hoverColor: Color(lightBlack),
                    onTap: () {
                      landingController.toNextPage(3);
                    },
                    leading: Icon(
                      Icons.account_tree_sharp,
                      color: Color(white),
                      size: 17,
                    ),
                    title: Text(
                      "Projects",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Sell source codes
                Material(
                  color: Colors.transparent,
                  child: ListTile(
                    hoverColor: Color(lightBlack),
                    onTap: () {
                      landingController.toNextPage(4);
                    },
                    leading: Icon(
                      Icons.code_sharp,
                      color: Color(white),
                      size: 17,
                    ),
                    title: Text(
                      "Source Codes",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- About Us
                Material(
                  color: Colors.transparent,
                  child: ListTile(
                    hoverColor: Color(lightBlack),
                    onTap: () {
                      landingController.toNextPage(5);
                    },
                    leading: Icon(
                      Icons.add_home_work_sharp,
                      color: Color(white),
                      size: 17,
                    ),
                    title: Text(
                      "About Us",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                //-- Policies
                Material(
                  color: Colors.transparent,
                  child: ListTile(
                    hoverColor: Color(lightBlack),
                    onTap: () {
                      // landingController.toNextPage(5);
                    },
                    leading: Icon(
                      Icons.policy_sharp,
                      color: Color(white),
                      size: 17,
                    ),
                    title: Text(
                      "Policies",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

*/