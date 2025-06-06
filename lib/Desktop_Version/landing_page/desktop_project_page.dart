import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

class DesktopProjectPage extends StatelessWidget {
  const DesktopProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(black),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: ListView(
          children: [
            //-- Content1
            Container(
              margin: const EdgeInsets.only(top: 40),
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
                            "ACCESS PROJECTS FROM SO MANY CONTRIBUTORS",
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: Color(white)),
                          ),
                        ],
                      ),
                      Text(
                        "Get access to all projects\ncurrently in production\nphase or beta testing",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Get access to all projects insights currently in production\nphase or beta testing learn contribute and grow",
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
                                      'Access Projects',
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
                              Icons.account_tree_sharp,
                              color: Color(white),
                              size: 39,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //-- Image1
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: Image.asset("assets/images/project1.jpg"),
                  ),
                ],
              ),
            ),

            //-- Project content
            Container(
              // height: MediaQuery.of(context).size.height / 3.1,
              width: double.infinity,
              margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 20),
              decoration: BoxDecoration(
                color: Color(lightBlack),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //-- project1
                        Container(
                          decoration: BoxDecoration(
                            color: Color(black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image & Text
                                Container(
                                  height: 90,
                                  width: 255,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        "assets/images/newcode.jpg",
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(black),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              "assets/images/girl1.png",
                                            ),
                                          ),
                                          title: Text(
                                            "Jane Emmanuel",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //-- Project Category
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
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
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //-- Project Topic
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10.5,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    // overflow: TextOverflow.clip,
                                    "A front-end of a News App with Nodejs as backend",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                //-- Button
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 143,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                          color: Color(lightBlack),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                            onTap: () {},
                                            child: Center(
                                              child: Text(
                                                'View Project',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_tree_sharp,
                                        color: Color(white),
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //-- project2
                        Container(
                          decoration: BoxDecoration(
                            color: Color(black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image & Text
                                Container(
                                  height: 90,
                                  width: 255,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        "assets/images/newcode.jpg",
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(black),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              "assets/images/girl1.png",
                                            ),
                                          ),
                                          title: Text(
                                            "Jane Emmanuel",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //-- Project Category
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
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
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //-- Project Topic
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10.5,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    // overflow: TextOverflow.clip,
                                    "A front-end of a News App with Nodejs as backend",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                //-- Button
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 143,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                          color: Color(lightBlack),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                            onTap: () {},
                                            child: Center(
                                              child: Text(
                                                'View Project',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_tree_sharp,
                                        color: Color(white),
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //-- project3
                        Container(
                          decoration: BoxDecoration(
                            color: Color(black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image & Text
                                Container(
                                  height: 90,
                                  width: 255,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        "assets/images/newcode.jpg",
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(black),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              "assets/images/girl1.png",
                                            ),
                                          ),
                                          title: Text(
                                            "Jane Emmanuel",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //-- Project Category
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
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
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //-- Project Topic
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10.5,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    // overflow: TextOverflow.clip,
                                    "A front-end of a News App with Nodejs as backend",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                //-- Button
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 143,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                          color: Color(lightBlack),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                            onTap: () {},
                                            child: Center(
                                              child: Text(
                                                'View Project',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_tree_sharp,
                                        color: Color(white),
                                        size: 25,
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //-- project1
                        Container(
                          decoration: BoxDecoration(
                            color: Color(black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image & Text
                                Container(
                                  height: 90,
                                  width: 255,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        "assets/images/newcode.jpg",
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(black),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              "assets/images/girl1.png",
                                            ),
                                          ),
                                          title: Text(
                                            "Jane Emmanuel",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //-- Project Category
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
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
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //-- Project Topic
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10.5,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    // overflow: TextOverflow.clip,
                                    "A front-end of a News App with Nodejs as backend",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                //-- Button
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 143,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                          color: Color(lightBlack),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                            onTap: () {},
                                            child: Center(
                                              child: Text(
                                                'View Project',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_tree_sharp,
                                        color: Color(white),
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //-- project2
                        Container(
                          decoration: BoxDecoration(
                            color: Color(black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image & Text
                                Container(
                                  height: 90,
                                  width: 255,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        "assets/images/newcode.jpg",
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(black),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              "assets/images/girl1.png",
                                            ),
                                          ),
                                          title: Text(
                                            "Jane Emmanuel",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //-- Project Category
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
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
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //-- Project Topic
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10.5,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    // overflow: TextOverflow.clip,
                                    "A front-end of a News App with Nodejs as backend",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                //-- Button
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 143,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                          color: Color(lightBlack),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                            onTap: () {},
                                            child: Center(
                                              child: Text(
                                                'View Project',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_tree_sharp,
                                        color: Color(white),
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //-- project3
                        Container(
                          decoration: BoxDecoration(
                            color: Color(black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Image & Text
                                Container(
                                  height: 90,
                                  width: 255,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        "assets/images/newcode.jpg",
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: Color(black),
                                        ),
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                              "assets/images/girl1.png",
                                            ),
                                          ),
                                          title: Text(
                                            "Jane Emmanuel",
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.bodySmall,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //-- Project Category
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
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
                                            "Web Development",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //-- Project Topic
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 10.5,
                                  ),
                                  child: Text(
                                    textAlign: TextAlign.left,
                                    // overflow: TextOverflow.clip,
                                    "A front-end of a News App with Nodejs as backend",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),

                                //-- Button
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 30,
                                        margin: const EdgeInsets.only(right: 8),
                                        width: 143,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                          color: Color(lightBlack),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                            onTap: () {},
                                            child: Center(
                                              child: Text(
                                                'View Project',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall!.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.account_tree_sharp,
                                        color: Color(white),
                                        size: 25,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
