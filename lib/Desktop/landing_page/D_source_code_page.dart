import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_colors.dart';
import 'package:stockup/widgets/header_footer/D_header_footer/D_footer.dart';

class DesktopSourceCodePage extends StatelessWidget {
  const DesktopSourceCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView(
        children: [
          //-- Content1
          Container(
            margin: const EdgeInsets.only(top: 70),
            width: double.infinity,
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //-- Texts
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
                      ).textTheme.bodyLarge!.copyWith(color: Color(black)),
                    ),
                  ],
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Get access to all source codes already\ndesigned and ready for production",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Get access to all projects source codes well designed &\nbuilt, bug free codes",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),

                //-- Button
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Icon(Icons.code_sharp, color: Color(black), size: 39),
                    ],
                  ),
                ),
                // //-- Image1
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 2.3,
                //   child: Image.asset("assets/images/code2.jpg"),
                // ),
              ],
            ),
          ),

          // Trending Source Codes
          Padding(
            padding: EdgeInsets.only(top: 95, left: 50),
            child: Text(
              "MOST POPULAR SOURCE CODES",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),

          //-- Source Codes
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //-- source code 1
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),

                    //-- source codeode 2
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),
                    //-- source code 3
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),
                    //-- source code 4
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                    //-- source code 1
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),

                    //-- source codeode 2
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),
                    //-- source code 3
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),
                    //-- source code 4
                    Container(
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
                                      borderRadius: BorderRadius.circular(8),
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

                            //-- Project Category & Prices
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
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
                                          "Fin-Tech App",
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
                                    //  margin: EdgeInsets.only(left: 6),
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
                                          "N90.000",
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "built with:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Color(black)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
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
                                          "React",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                "A full fin-tech app built with React with Nodejs as backend",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),

                            //-- Button
                            Container(
                              height: 30,
                              margin: const EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width / 5.4,
                              child: Material(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(lightBlack),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      'Source code',
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
                          ],
                        ),
                      ),
                    ),
                  ],
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
