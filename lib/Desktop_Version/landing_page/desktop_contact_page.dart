import 'package:flutter/material.dart';
import 'package:stockup/Desktop_Version/desktop_forms/desktop_contact_form.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

class DesktopContactPage extends StatelessWidget {
  const DesktopContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(darkContainerColor),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 35, left: 30, bottom: 35),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Color(lightBlack)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Icon
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 85),
                      child: Icon(
                        Icons.phone_in_talk_rounded,
                        size: 100,
                        color: Color(white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65, left: 85),
                      child: Text(
                        "Contact",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 50,
                          color: Color(white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Row(
                        children: [
                          Text(
                            "Stockup!",
                            style: Theme.of(context).textTheme.titleLarge!
                                .copyWith(fontSize: 50, color: Color(white)),
                          ),
                          Icon(
                            Icons.emoji_emotions,
                            color: Color(white),
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 85),
                      child: Text(
                        "We are availble 24/7 to help you solve all\nyour problems here on Stockup.",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(white),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //-- Register section
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 35, right: 70, bottom: 35),
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width / 2.5,
                color: Color(white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // -- Welcome back text
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 0),
                      child: Text(
                        "Contact Us Today!",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Color(purpleColor),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 0),
                      child: Text(
                        "We are always available to assist you",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),

                    //-- Form
                    desktopContactForm(context),
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
