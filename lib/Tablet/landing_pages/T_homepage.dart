import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stockup/widgets/custom_colors.dart';
import 'package:stockup/widgets/header_footer/T_header_footer/T_footer.dart';
import 'package:stockup/widgets/mini_courses.dart';
import 'package:stockup/widgets/testimonies.dart';

class TabletHomepage extends StatelessWidget {
  const TabletHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            //-- Web content 1
            Container(
              margin: const EdgeInsets.only(top: 75),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Texts
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: SizedBox(
                                width: 34,

                                child: Divider(
                                  thickness: 1.7,
                                  color: Color(purpleColor),
                                ),
                              ),
                            ),
                            Text(
                              "BEST EDUCATION IS HERE",
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Color(white)),
                            ),
                          ],
                        ),
                        Text(
                          "Keep learning and unlock\nyour potentials on every\neducational level",
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge!.copyWith(fontSize: 35),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            "Kept ideas aren't changing the world, share of your\ninsights & knowledge that is accessable to\neveryone to help them build a successful career",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),

                        //-- Button
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 42,
                                margin: const EdgeInsets.only(right: 8),
                                width: 143,

                                child: Material(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Color(purpleColor),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(7),
                                    onTap: () {},
                                    child: Center(
                                      child: Text(
                                        'Explore Courses',
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
                              //-- Contact Us Button
                              Container(
                                height: 42,
                                margin: const EdgeInsets.only(right: 15),
                                width: 143,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(white),
                                    width: 1.6,
                                  ),
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
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
                              Icon(
                                Icons.play_circle_outline_rounded,
                                color: Color(white),
                                size: 55,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // -- Image 1
                  Padding(
                    padding: const EdgeInsets.only(top: 35, right: 8.0),
                    child: Stack(
                      children: [
                        //-- Guy image
                        Image.asset("assets/images/guy1.png"),
                        //-- review Image
                        Positioned(
                          top: 260,
                          child: Image.asset(
                            "assets/images/review2.png",
                            height: 90,
                            width: 190,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //-- Web content 2
            Padding(
              padding: const EdgeInsets.only(top: 170, left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: SizedBox(
                              width: 34,

                              child: Divider(
                                thickness: 1.7,
                                color: Color(purpleColor),
                              ),
                            ),
                          ),
                          Text(
                            "Services",
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: Color(white)),
                          ),
                        ],
                      ),
                      Text(
                        "Why people choose \nour courses",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge!.copyWith(fontSize: 35),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "We focus on industries leading platforms so that\nyou can be prepared for your next job or career.\nour trusted and efficient tutors teach your\neverything there is to succeed",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),

                      //-- Services Contents 1
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        // height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width / 2.9,
                        decoration: BoxDecoration(
                          color: const Color(lightBlack),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //-- Image
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SvgPicture.asset(
                                  "assets/images/industry.svg",
                                  height: 50,
                                  width: 90,
                                ),
                              ),

                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Industry Expert Teachers",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 25,
                                  right: 10,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Text(
                                        "Contact Us",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 3),
                                      child: Icon(
                                        Icons.arrow_circle_right_outlined,
                                        color: Color(white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //-- Services Contents
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        //-- Service Contents 2
                        Container(
                          // height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width / 2.8,
                          margin: EdgeInsets.only(bottom: 25),
                          decoration: BoxDecoration(
                            color: const Color(lightBlack),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: SvgPicture.asset(
                                    "assets/images/categories.svg",
                                    height: 50,
                                    width: 90,
                                  ),
                                ),

                                //-- text
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "More than +20 categories",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 25,
                                    right: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 4,
                                        ),
                                        child: Text(
                                          "Contact Us",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium!.copyWith(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.arrow_circle_right_outlined,
                                          color: Color(white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //-- Service Contents 3
                        Container(
                          // height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width / 2.7,
                          decoration: BoxDecoration(
                            color: const Color(lightBlack),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: SvgPicture.asset(
                                    "assets/images/price.svg",
                                    height: 50,
                                    width: 90,
                                  ),
                                ),

                                //-- text
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Affordable prices with discounts",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 25,
                                    bottom: 10,
                                    right: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 4,
                                        ),
                                        child: Text(
                                          "Contact Us",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium!.copyWith(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.arrow_circle_right_outlined,
                                          color: Color(white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //-- Web Content 3
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Explore courses categories",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: 34),
                ),
              ),
            ),

            //-- Courses Categories 1
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //-- Course 1
                  Container(
                    width: MediaQuery.of(context).size.width / 3.4,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/graphicDesign.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "Graphic Design",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+60 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),

                  //-- Course 2
                  Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: const Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/dev.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "Front-end Developement",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+400 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),

                  //-- Course 3
                  Container(
                    width: MediaQuery.of(context).size.width / 4.3,
                    margin: const EdgeInsets.only(right: 0),
                    decoration: BoxDecoration(
                      color: const Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/booksvg.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "Books",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+60 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- Courses Categories 2
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //-- Course 4
                  Container(
                    width: MediaQuery.of(context).size.width / 3.3,
                    margin: const EdgeInsets.only(right: 0),
                    decoration: BoxDecoration(
                      color: const Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/uiux.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "UI/UX Design",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+60 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),

                  //-- Course 5
                  Container(
                    width: MediaQuery.of(context).size.width / 3.4,
                    decoration: BoxDecoration(
                      color: const Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/language.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "Language",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+38 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- Courses Categories 3
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //-- Course 2
                  Container(
                    width: MediaQuery.of(context).size.width / 2.6,
                    margin: const EdgeInsets.only(right: 35),
                    decoration: BoxDecoration(
                      color: const Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/brainsvg.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "Software Programming",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+900 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),

                  //-- Course 3
                  Container(
                    width: MediaQuery.of(context).size.width / 3.2,
                    decoration: BoxDecoration(
                      color: const Color(lightBlack),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.only(right: 5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(white),
                          child: SvgPicture.asset(
                            "assets/images/serversvg.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: Text(
                          "Cloud Computing",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          "+699 courses",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- More Courses Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 60),
                  width: MediaQuery.of(context).size.width / 6.1,
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(purpleColor),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(7),
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'More Courses',
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

            //-- Web content 4
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Grow your Audiences with StockUp",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(fontSize: 34),
                  ),
                  Text(
                    "podcast streams",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(fontSize: 34),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  "StockUp is here to help you grow your career & share your knowledge to\nthe world with the help of StockUp podcasts",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),

            //-- Web contents 5
            Container(
              margin: const EdgeInsets.only(top: 35),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //-- content 1
                      Text(
                        "A podcast for Meetups\nmakers & entrepreneurs",

                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(fontSize: 35),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Engage your Audiences with StockUp Live PodCasts",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),

                      //-- Join now button
                      Container(
                        height: 50,
                        width: 200,
                        margin: const EdgeInsets.only(top: 15),
                        child: Material(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(purpleColor),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(8),
                            child: Center(
                              child: Text(
                                "Setup your podcast",
                                style: Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Image.asset(
                          "assets/images/liveguy1.jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //-- Courses
            //-- Web content 5
            miniTabletCourses(context),

            //-- Web content 6
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Texts
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        //-- Text1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: SizedBox(
                                width: 34,
                                child: Divider(
                                  thickness: 1.7,
                                  color: Color(purpleColor),
                                ),
                              ),
                            ),
                            Text(
                              "BUILD YOUR CAREER TODAY",
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Color(white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: SizedBox(
                                width: 34,
                                child: Divider(
                                  thickness: 1.7,
                                  color: Color(purpleColor),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //-- Text2
                        Text(
                          textAlign: TextAlign.center,
                          "Teach, Learn and Grow\nwith Stockup",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.copyWith(fontSize: 35),
                        ),

                        //-- Content1
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- Image
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: Color(white),
                                child: SvgPicture.asset(
                                  "assets/images/teacherIcon.svg",
                                  height: 35,
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //-- Text1
                                  Text(
                                    "Up-To-Date course contents",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  //-- Text2
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      "Our platform provides you with the latest courses on every career fields",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        //-- Content2
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- Image
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: const Color(white),
                                child: SvgPicture.asset(
                                  "assets/images/dev.svg",
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //-- Text1
                                  Text(
                                    "Engage Audiences with live podcasts\n& meetups all done virtually",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  //-- Text2
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      "Our platform provides you with the right tools to scale &\ngrow your audiences and students",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        //-- Buttons
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 42,
                                margin: const EdgeInsets.only(right: 30),
                                child: Material(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Color(purpleColor),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(7),
                                    onTap: () {},
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                        ),
                                        child: Text(
                                          'Explore Courses',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              //-- Contact Us Button
                              Container(
                                height: 42,
                                margin: const EdgeInsets.only(right: 30),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                        ),
                                        child: Text(
                                          'Contact Us',
                                          style:
                                              Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(),
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

                  //-- Images
                  SizedBox(height: 50),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.1,
                    width: MediaQuery.of(context).size.height / 2.4,
                    child: Stack(
                      children: [
                        //-- Image1
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset("assets/images/bg1.png"),
                        ),

                        //-- Image2
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50, right: 20),
                            child: Image.asset(
                              "assets/images/people1.png",
                              height: MediaQuery.of(context).size.height / 2.4,
                              width: MediaQuery.of(context).size.height / 2.8,
                            ),
                          ),
                        ),

                        //-- Image3
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 50),
                            child: Image.asset(
                              "assets/images/review1.png",
                              height: 100,
                              width: 200,
                            ),
                          ),
                        ),

                        //-- Image4
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Image.asset(
                              "assets/images/review2.png",
                              height: 110,
                              width: 250,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //-- Web content 7
            Container(
              margin: const EdgeInsets.only(top: 110, left: 30, right: 30),
              height: MediaQuery.of(context).size.height / 3.1,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(lightBlack),
              ),
              child: Column(
                children: [
                  //-- Text 1
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: SizedBox(
                            width: 34,

                            child: Divider(
                              thickness: 1.7,
                              color: Color(purpleColor),
                            ),
                          ),
                        ),
                        Text(
                          "INSTRUCTOR",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(color: Color(white)),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: SizedBox(
                            width: 34,

                            child: Divider(
                              thickness: 1.7,
                              color: Color(purpleColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //-- Text2
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Courses taught by all industries\naround Nigeria and Beyound",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),

                  //-- Text3
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Discover the possiblities of online education and unlock your true\npotential and expand your knowledge",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                    ),
                  ),

                  //-- Buttons
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 42,
                          margin: const EdgeInsets.only(right: 30),
                          child: Material(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(purpleColor),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(7),
                              onTap: () {},
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: Text(
                                    'Become An Instructor',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //-- browse list of instructors Button
                        Container(
                          height: 42,
                          margin: const EdgeInsets.only(right: 30),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1.6),
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(7),
                              onTap: () {},
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: Text(
                                    'Browse Instructors',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.white),
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

            //-- Web content 8 Testimonies
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //-- Texts
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //-- Text1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: SizedBox(
                                width: 34,

                                child: Divider(
                                  thickness: 1.7,
                                  color: Color(purpleColor),
                                ),
                              ),
                            ),
                            Text(
                              "Testimonies",
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: Color(white)),
                            ),
                          ],
                        ),

                        //-- Text2
                        Text(
                          textAlign: TextAlign.center,
                          "What our students have to say\nabout the Stockup system",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.copyWith(fontSize: 35),
                        ),
                        //-- Text3
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            "We focus on industry leading platforms so that you can be\nprepared fpr your next job or advance in\nyour desired career paths",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),

                        //-- Buttons
                        Container(
                          height: 42,
                          width: 260,
                          margin: const EdgeInsets.only(right: 30, top: 30),
                          child: Material(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(purpleColor),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(7),
                              onTap: () {},
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: Text(
                                    'Explore Courses',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //-- Testimonies
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    height: MediaQuery.of(context).size.height / 4.8,
                    width: MediaQuery.of(context).size.height / 1.8,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          studentTabletTestimony1(context),
                          studentTabletTestimony2(context),
                          studentTabletTestimony3(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-- Footer
            tabletFooter(context),
          ],
        ),
      ),
    );
  }
}
