import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stockup/widgets/custom_colors.dart';
import 'package:stockup/widgets/header_footer/D_header_footer/D_footer.dart';
import 'package:stockup/widgets/testimonies.dart';

class DesktopHomepage extends StatelessWidget {
  const DesktopHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView(
        children: [
          //-- Web content 1
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Texts
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
                          "BEST CAREER PLATFORM IS HERE",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(black)),
                        ),
                      ],
                    ),
                    Text(
                      "Share, learn and unlock\nyour potentials on every\ncareer level",
                      style: Theme.of(context).textTheme.titleLarge,
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
                          Container(
                            height: 42,
                            margin: const EdgeInsets.only(right: 8),
                            width: 143,
                            child: Material(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(green),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(7),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Source Codes',
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
                            color: Color(black),
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //-- Image1
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.8,
                      child: Image.asset("assets/images/cource1.jpg"),
                    ),
                    //-- Review Image
                    Image.asset(
                      "assets/images/review2.png",
                      height: 90,
                      width: 220,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //-- Web content 2
          //-- Courses Categories 1
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //-- Course 1
                Container(
                  margin: const EdgeInsets.only(right: 35),
                  decoration: BoxDecoration(
                    color: Color(darkContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/graphicDesign.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Graphic Design",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 5,
                                ),
                                child: Text(
                                  "+60 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //-- Course 2
                Container(
                  margin: const EdgeInsets.only(right: 35),
                  decoration: BoxDecoration(
                    color: const Color(darkContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/dev.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Front end Developement",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 5,
                                ),
                                child: Text(
                                  "+400 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //-- Course 3
                Container(
                  color: const Color(darkContainerColor),
                  margin: const EdgeInsets.only(right: 35),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/uiux.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "UI/UX Design",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 6,
                                ),
                                child: Text(
                                  "+60 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //-- Course 4
                Container(
                  decoration: BoxDecoration(
                    color: const Color(darkContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/language.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Language",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 5,
                                ),
                                child: Text(
                                  "+38 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
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

          //-- Courses Categories 2
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //-- Course 1
                Container(
                  margin: const EdgeInsets.only(right: 35),
                  decoration: BoxDecoration(
                    color: const Color(darkContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/booksvg.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Books",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 5,
                                ),
                                child: Text(
                                  "+60 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //-- Course 2
                Container(
                  margin: const EdgeInsets.only(right: 35),
                  decoration: BoxDecoration(
                    color: const Color(darkContainerColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/brainsvg.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Software Programming",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 5,
                                ),
                                child: Text(
                                  "+900 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //-- Course 3
                Container(
                  color: const Color(darkContainerColor),
                  margin: const EdgeInsets.only(right: 35),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        //-- Image
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(white),
                            child: SvgPicture.asset(
                              "assets/images/serversvg.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //-- text
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "Cloud Computing",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 4,
                                  top: 5,
                                ),
                                child: Text(
                                  "+699 courses",
                                  style: Theme.of(context).textTheme.bodyMedium,
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

          //-- More Courses Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width / 6.5,
                child: Material(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(black),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(7),
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'More Courses',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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

          //-- Web content (Live)
          Container(
            margin: const EdgeInsets.only(top: 120),
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Texts
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
                          "LIVE STREAMS & PODCASTS EVENTS",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(black)),
                        ),
                      ],
                    ),
                    Text(
                      "A Live-Stream or Podcast\nfor Tutors & Entrepreneurs\non an educational level",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        "Host a podcast or go full on Live-Streaming share your\ninsights & knowledge that is accessable to everyone to help\nthem build a successful career",
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
                              color: Color(green),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(7),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Start Streaming',
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
                            Icons.multitrack_audio_sharp,
                            color: Color(green),
                            size: 39,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //-- Image1
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.9,
                  child: Image.asset("assets/images/podcast2.jpg"),
                ),
              ],
            ),
          ),

          //-- Web Content(Source Codes)
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            margin: const EdgeInsets.only(top: 120, left: 60, right: 60),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                          "ACCESS SOURCE CODES FROM CONTRIBUTORS",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                        ),
                      ],
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Get access to all source codes already\ndesigned and ready for production",
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge!.copyWith(color: Color(white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Get access to all projects source codes well designed &\nbuilt, bug free codes",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Color(white)),
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
                                    'Source Codes',
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
                          Icon(Icons.code_sharp, color: Color(white), size: 39),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //-- Web content 3 (why people choose our services)
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Title Text
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
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text(
                      "Why people choose our\nCourses streaming & Source\nCode services",
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge!.copyWith(fontSize: 36),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        "We focus on industries leading platforms so that you\ncan be prepared for your next job or career our trusted\nand efficient tutors teach your everything there is to succeed",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Container(
                      height: 42,
                      margin: const EdgeInsets.only(right: 8, top: 20),
                      width: 143,
                      child: Material(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(purpleColor),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Get Started',
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

                //-- Service Contents
                Column(
                  children: [
                    Row(
                      children: [
                        //-- Services Contents 1
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: const EdgeInsets.only(right: 15),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
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
                                            color: Color(white),
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

                        //-- Service Contents 2
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: const EdgeInsets.only(right: 15),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
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
                                            color: Color(white),
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
                    SizedBox(height: 10),
                    Row(
                      children: [
                        //-- Service Contents 3
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: const Color(black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
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
                                            color: Color(white),
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
                        //-- Service Content 4
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
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
                                    "Easy Payment Methods",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
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
                                            color: Color(white),
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
                  ],
                ),
              ],
            ),
          ),

          //-- Web content (Courses)
          /*
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //-- Images
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.height / 1.4,
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
                            height: MediaQuery.of(context).size.height / 1.4,
                            width: MediaQuery.of(context).size.height / 1.8,
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

                //-- Texts
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        ],
                      ),

                      //-- Text2
                      Text(
                        "Teach, Learn and Grow\nwith Stockup",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      //-- Content1
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),

                      //-- Content2
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),

                      //-- Buttons
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
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
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium!.copyWith(),
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
              ],
            ),
          ),
          */

          //-- Web content 7 (instructors)
          Container(
            margin: const EdgeInsets.only(top: 110, left: 30, right: 30),
            height: MediaQuery.of(context).size.height / 1.8,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(black),
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
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(color: Colors.white),
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
                                  style: Theme.of(context).textTheme.bodyMedium!
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
                          color: Color(lightBlack),
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
                                  style: Theme.of(context).textTheme.bodyMedium!
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //-- Texts
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                .copyWith(color: Color(black)),
                          ),
                        ],
                      ),

                      //-- Text2
                      Text(
                        "What our students have to\nsay about the Stockup\nsystem",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      //-- Text3
                      Text(
                        "We focus on industry leading platforms so\nthat you can be prepared fpr your next job\nor advance in your desired career paths",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),

                      //-- Buttons
                      Container(
                        height: 42,
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
                                  style: Theme.of(context).textTheme.bodyMedium!
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
                  height: MediaQuery.of(context).size.height / 2.8,
                  width: MediaQuery.of(context).size.height / 1.4,
                  child: PageView(
                    scrollBehavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      },
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: [
                      studentTestimony1(context),
                      studentTestimony2(context),
                      studentTestimony3(context),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //-- Footer
          desktopFooter(context),
        ],
      ),
    );
  }
}
