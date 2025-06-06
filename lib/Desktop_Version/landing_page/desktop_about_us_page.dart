import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';
import 'package:stockup/widgets/header_footer/desktop_header_footer/desktop_footer.dart';

class DesktopAboutUsPage extends StatelessWidget {
  const DesktopAboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: ListView(
          children: [
            //-- About us Content 1
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
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
                        "Understand our purpose and vsion",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge!.copyWith(color: Color(black)),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "About Our Online Courses Podcast Software\nSource Codes to Empower Your Learning\nand Listening Experience",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Our platform is a powerful, all-in-one solution designed to help\neducators, creators, and professionals deliver\nseamless online courses and podcasts",
                    ),
                  ),

                  //-- Button
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
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
                  ),
                ],
              ),
            ),

            //-- About us content 2
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 100,
                right: 100,
                bottom: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(black),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Column(
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
                          "WHY CHOOSE US?",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        "We believe in simplifying complex processes, giving you more time to focus on your content and audience\nWith robust analytics and a user-friendly interface, we help you grow, engage\nand succeed in your online education or podcasting journey.",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //-- About us contents 3
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                left: 100,
                right: 100,
                top: 30,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: Color(white),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //-- content 1
                        Container(
                          width: MediaQuery.of(context).size.width / 3.3,
                          decoration: BoxDecoration(
                            color: Color(lightBlack),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(lightBlack),
                                      child: Icon(
                                        Icons.menu_book,
                                        color: Colors.green,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Online Courses",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: Color(white)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                    "Create and manage courses with ease. Upload videos, quizzes, and assignments, and track learner progress. With customizable templates and interactive features, you can offer an enriching learning experience tailored to your audience.",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //-- content 2
                        Container(
                          width: MediaQuery.of(context).size.width / 3.3,
                          decoration: BoxDecoration(
                            color: Color(lightBlack),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(lightBlack),
                                      child: Icon(
                                        Icons.mic,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Podcasts",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: Color(white)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                    "Record, edit, and publish your podcasts effortlessly. With built-in tools for audio enhancement, customizable templates, and distribution options to major podcast platforms, our software ensures your podcast is professional and reaches listeners worldwide.",
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
                        //-- content 3
                        Container(
                          width: MediaQuery.of(context).size.width / 3.3,
                          decoration: BoxDecoration(
                            color: Color(lightBlack),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(lightBlack),
                                      child: Icon(
                                        Icons.account_tree_sharp,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Projects",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: Color(white)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                    "Record, edit, and publish your podcasts effortlessly. With built-in tools for audio enhancement, customizable templates, and distribution options to major podcast platforms, our software ensures your podcast is professional and reaches listeners worldwide.",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //-- content 4
                        Container(
                          width: MediaQuery.of(context).size.width / 3.3,
                          decoration: BoxDecoration(
                            color: Color(lightBlack),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(lightBlack),
                                      child: Icon(
                                        Icons.code_sharp,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Source Codes",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: Color(white)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Color(white)),
                                    "Record, edit, and publish your podcasts effortlessly. With built-in tools for audio enhancement, customizable templates, and distribution options to major podcast platforms, our software ensures your podcast is professional and reaches listeners worldwide.",
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
            ),

            //-- About us content 4
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 50),
              child: Text(
                "Key Features",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 50, right: 50, bottom: 20),
              width: MediaQuery.of(context).size.width / 2.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //-- Content 1
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 3.5,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tileColor: Color(black),
                        leading: CircleAvatar(
                          backgroundColor: Color(lightBlack),
                          child: Text(
                            "1",
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: Color(white)),
                          ),
                        ),
                        title: Text(
                          "Course creation with videos",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tileColor: Color(black),
                        leading: CircleAvatar(
                          backgroundColor: Color(lightBlack),
                          child: Text(
                            "2",
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: Color(white)),
                          ),
                        ),
                        title: Text(
                          "Easy-to-use podcast recording and editing tools",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                        ),
                      ),
                    ),
                  ),

                  //-- Content 2
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 3.1,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tileColor: Color(black),
                        leading: CircleAvatar(
                          backgroundColor: Color(lightBlack),
                          child: Text(
                            "3",
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: Color(white)),
                          ),
                        ),
                        title: Text(
                          "Customizable templates for branding",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2.9,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tileColor: Color(black),
                        leading: CircleAvatar(
                          backgroundColor: Color(lightBlack),
                          child: Text(
                            "4",
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: Color(white)),
                          ),
                        ),
                        title: Text(
                          "Secure payment processing for courses",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(color: Color(white)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //-- Footer
            desktopFooter(context),
          ],
        ),
      ),
    );
  }
}
