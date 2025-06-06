import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/Desktop_Version/desktop_auth_pages/desktop_register_page.dart';
import 'package:stockup/Desktop_Version/desktop_forms/desktop_login_form.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

class DesktopLoginPage extends StatelessWidget {
  const DesktopLoginPage({super.key});

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
                decoration: BoxDecoration(
                  color: Color(lightBlack),
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/project1.jpg"),
                  // ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Icon
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 85),
                      child: Icon(
                        Icons.menu_book,
                        size: 100,
                        color: Color(white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65, left: 85),
                      child: Text(
                        "Login your account",
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
                            "with Stockup!",
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
                        "Kept ideas aren't changing the world, share of your insights\n& knowledge that is accessable to everyone to help\nthem build a successful career",
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

            //-- Login section
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 35, right: 70, bottom: 35),
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width / 2.7,
                color: Color(white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //-- Welcome back text
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 0),
                      child: Text(
                        "Welcome Back!",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Color(purpleColor),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => DesktopRegisterPage());
                              },
                              child: Text(
                                "create an account now",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //-- Form
                    desktopLoginForm(context),
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
