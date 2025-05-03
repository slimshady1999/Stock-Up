import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';

class DesktopMobileDevelopmentCoursePage extends StatelessWidget {
  const DesktopMobileDevelopmentCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //-- Course 1
                    Container(
                      width: MediaQuery.of(context).size.width / 5.0,
                      decoration: BoxDecoration(
                        color: Color(darkContainerColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            //-- Image & Text
                            Container(
                              height: 240,
                              width: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/images/code1.jpg"),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 25,
                                      left: 5,
                                      right: 25,
                                    ),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.5),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 5.0,
                                            ),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: AssetImage(
                                                "assets/images/girl1.png",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Grace Gibbson",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Category & Price
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //-- Category
                                    Container(
                                      margin: const EdgeInsets.only(right: 20),
                                      decoration: BoxDecoration(
                                        color: Color(purpleColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 5,
                                            right: 10,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "Programming",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //-- Price
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(black)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 10,
                                            right: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "N50,000 NGN",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //-- Courses Topic
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                                top: 12.5,
                              ),
                              child: Text(
                                textAlign: TextAlign.left,
                                // overflow: TextOverflow.clip,
                                "Getting started with linux command line",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Courses for
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 5,
                                top: 12.5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Course for:  ",
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                        ),
                                        TextSpan(
                                          text: "Beginners",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Color(green)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Courses sessions and duration
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                right: 5,
                                left: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //-- Sessions
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Color(black),
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "10 Sessions",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),

                                  //-- Durations
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Icon(
                                          Icons.access_time,
                                          color: Color(black),
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "2hrs 30mins",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //-- Purchase But6ton
                            //-- Contact Us Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: 200,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(purpleColor),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Purchase Course',
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
                      ),
                    ),

                    //-- Course 2
                    Container(
                      width: MediaQuery.of(context).size.width / 5.0,
                      decoration: BoxDecoration(
                        color: Color(darkContainerColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            //-- Image & Text
                            Container(
                              height: 240,
                              width: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/images/code2.jpg"),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 25,
                                      left: 5,
                                      right: 25,
                                    ),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.5),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 5.0,
                                            ),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: AssetImage(
                                                "assets/images/girl1.png",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Emmanuel Jackson",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Category & Price
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //-- Category
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: Color(purpleColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 5,
                                            right: 10,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //-- Price
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(black)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 5,
                                            right: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "150,000 NGN",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //-- Courses Topic
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                                top: 12.5,
                              ),
                              child: Text(
                                textAlign: TextAlign.left,
                                // overflow: TextOverflow.clip,
                                "Learn php development from scratch in this course",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Courses for
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 5,
                                top: 12.5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Course for:  ",
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                        ),
                                        TextSpan(
                                          text: "Beginners",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Color(green)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Courses sessions and duration
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                right: 5,
                                left: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //-- Sessions
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Color(black),
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "26 Sessions",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),

                                  //-- Durations
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Icon(
                                          Icons.access_time,
                                          color: Color(black),
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "4hrs 23mins",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //-- Purchase But6ton
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: 200,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(purpleColor),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Purchase Course',
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
                      ),
                    ),

                    //-- Course 3
                    Container(
                      width: MediaQuery.of(context).size.width / 5.0,
                      decoration: BoxDecoration(
                        color: Color(darkContainerColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            //-- Image & Text
                            Container(
                              height: 240,
                              width: 270,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage("assets/images/code3.jpg"),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 25,
                                      left: 5,
                                      right: 25,
                                    ),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.5),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 5.0,
                                            ),
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundImage: AssetImage(
                                                "assets/images/girl1.png",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Jessica Alwell B",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Category & Price
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //-- Category
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: Color(purpleColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 5,
                                            right: 10,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "Cloud computing",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //-- Price
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(black)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 5,
                                            right: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "250,000 NGN",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //-- Courses Topic
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                                top: 12.5,
                              ),
                              child: Text(
                                textAlign: TextAlign.left,
                                // overflow: TextOverflow.clip,
                                "The the basics of Cloud computing with Amazon AWS from scratch in this course",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Courses for
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 5,
                                top: 12.5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Course for:  ",
                                          style:
                                              Theme.of(
                                                context,
                                              ).textTheme.bodyMedium,
                                        ),
                                        TextSpan(
                                          text: "advanced",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Courses sessions and duration
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                right: 5,
                                left: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //-- Sessions
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Color(black),
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "78 Sessions",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),

                                  //-- Durations
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Icon(
                                          Icons.access_time,
                                          color: Color(black),
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "9hrs 23mins",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //-- Purchase But6ton
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: 200,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(purpleColor),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Purchase Course',
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
