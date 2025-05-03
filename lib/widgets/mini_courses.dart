import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';

miniDesktopCourses(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 80),
    width: double.infinity,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //-- Course 1
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code1.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "Beginners",
                                  style: Theme.of(context).textTheme.bodyMedium!
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "10 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),

                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "2hrs 30mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //-- Author name
                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Grace Gibbson",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //-- Course 2
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code2.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "Beginners",
                                  style: Theme.of(context).textTheme.bodyMedium!
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
                        left: 5,
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "26 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),

                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "4hrs 23mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Emmanuel Jackson",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //-- Course 3
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code3.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "advanced",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(red)),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "78 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "9hrs 23mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Jessica Alwell B",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
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
  );
}

miniTabletCourses(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 120),
    width: double.infinity,
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

                child: Divider(thickness: 1.7, color: Color(purpleColor)),
              ),
            ),
            Text(
              "BROWSE COURSES",
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Color(white)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: SizedBox(
                width: 34,

                child: Divider(thickness: 1.7, color: Color(purpleColor)),
              ),
            ),
          ],
        ),

        //-- Text 2
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            "Browse our popular courses",
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontSize: 35),
          ),
        ),

        SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //-- Course 1
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code1.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "Beginners",
                                  style: Theme.of(context).textTheme.bodyMedium!
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "10 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),

                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "2hrs 30mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //-- Author name
                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Grace Gibbson",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //-- Course 2
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code2.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "Beginners",
                                  style: Theme.of(context).textTheme.bodyMedium!
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
                        left: 5,
                        right: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "26 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),

                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "4hrs 23mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Emmanuel Jackson",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //-- Course 3
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code3.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "advanced",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(red)),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "78 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "9hrs 23mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Jessica Alwell B",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //-- Course 4
            Container(
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Image & Text
                    Container(
                      height: 110,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/code3.jpg"),
                        ),
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
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //-- Courses Topic
                    Container(
                      width: 250,
                      margin: const EdgeInsets.only(
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
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "advanced",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(red)),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //-- Sessions
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "78 Sessions",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),

                          //-- Durations
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.access_time,
                                  color: Color(white),
                                  size: 20,
                                ),
                              ),
                              Text(
                                "9hrs 23mins",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 25, right: 25),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  "assets/images/girl1.png",
                                ),
                              ),
                            ),
                            Text(
                              "Jessica Alwell B",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
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
  );
}
