import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';
import 'package:stockup/widgets/featured_courses.dart';
import 'package:stockup/widgets/header_footer/D_header_footer/D_footer.dart';

class DesktopCoursePage extends StatelessWidget {
  const DesktopCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    //  final controller = Get.put(CoursePageNavigationController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //-- Content 1
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
                              "BEST EDUCATION IS HERE",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(color: Color(black)),
                            ),
                          ],
                        ),
                        Text(
                          "Keep learning and unlock\nyour potentials on every\neducational level",
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

              // Featured Courses
              Padding(
                padding: EdgeInsets.only(top: 50, left: 25),
                child: Row(
                  children: [
                    Text(
                      "FEATURED COURSES",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Color(black),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 14.5,
                              backgroundColor: Color(white),
                              child: Icon(
                                Icons.menu_book,
                                size: 16,
                                color: Color(black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8,
                              ),
                              child: Text(
                                "Access All Courses",
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(color: Color(white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //--  Courses
              SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ),
                  itemCount: 5,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final FeaturedCourses courseItems = courseList[index];
                    return Container(
                      margin: EdgeInsets.only(left: 6, bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 240, 238, 238),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-- Image & Text
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                    courseItems.courseImage.toString(),
                                  ),
                                ),
                              ),
                              child: //-- Author name
                                  Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 5,
                                      left: 2,
                                      right: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(black),
                                    ),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 16,
                                        backgroundImage: AssetImage(
                                          "${courseItems.courseAuthorImage}",
                                        ),
                                      ),
                                      title: Text(
                                        "${courseItems.courseAuthor}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(color: Color(white)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Category & Price
                            Padding(
                              padding: const EdgeInsets.only(top: 8.5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    //-- Category
                                    Container(
                                      // margin: const EdgeInsets.only(right: 20),
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
                                            textAlign: TextAlign.center,
                                            "${courseItems.courseCategory}",
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
                                      margin: EdgeInsets.only(left: 6),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(white)),
                                        color: Color(black),
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
                                            "${courseItems.coursePrice}",
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodySmall!.copyWith(
                                              color: Color(white),
                                              fontWeight: FontWeight.w800,
                                            ),
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
                                top: 8.5,
                              ),
                              child: Text(
                                textAlign: TextAlign.left,
                                // overflow: TextOverflow.clip,
                                "${courseItems.courseName}",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),

                            //-- Courses for
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                                right: 5,
                                top: 6.5,
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
                                              ).textTheme.bodySmall,
                                        ),
                                        TextSpan(
                                          text: "${courseItems.courseLevel}",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium!.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Color(green),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //-- Courses sessions and duration
                            /*Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
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
                                        "${courseItems.courseSession}",
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
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
                                        "${courseItems.courseTimeframe}",
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
                            */
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              //-- Footer
              desktopFooter(context),
            ],
          ),
        ),
      ),
    );
  }
}
