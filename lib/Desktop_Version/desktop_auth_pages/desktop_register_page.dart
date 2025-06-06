import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/Desktop_Version/desktop_auth_pages/desktop_login_page.dart';
import 'package:stockup/controllers/form_controller/form_navigation_page_controller.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

class DesktopRegisterPage extends StatelessWidget {
  const DesktopRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formNavgationcontroller = Get.put(FormNavigationPageController());

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
                        Icons.menu_book_sharp,
                        size: 100,
                        color: Color(white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65, left: 85),
                      child: Text(
                        "Create an account",
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

            //-- Register section
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 35, right: 70, bottom: 35),
                height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width / 2.5,
                color: Color(white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 0),
                      child: Text(
                        "Join Us Today!",
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(color: Color(purpleColor)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => DesktopLoginPage());
                              },
                              child: Text(
                                "Login now",
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  //color: Color(purpleColor),
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1, left: 0),
                      child: Text(
                        "it's FREE!, Takes less than a minute.",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    //-- Form
                    Container(
                      //height: MediaQuery.of(context).size.height / 1.4,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.deepPurple,
                      margin: EdgeInsets.only(top: 24),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2.4,
                            width: MediaQuery.of(context).size.width,
                            child: PageView(
                              controller:
                                  formNavgationcontroller.pageViewController,
                              onPageChanged: (index) {
                                formNavgationcontroller
                                    .isLastFormSection
                                    .value = (index == 1);
                              },
                              physics: BouncingScrollPhysics(),
                              children: [
                                // desktopRegisterForm1(context),
                                //desktopRegisterForm2(context),
                              ],
                            ),
                          ),

                          //-- Proceed Button
                          Obx(
                            () => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                formNavgationcontroller.isLastFormSection.value
                                    ? SizedBox(
                                      height: 45,
                                      width:
                                          MediaQuery.of(context).size.width /
                                          6.0,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(purpleColor),
                                        child: InkWell(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                          onTap: () {
                                            // formNavgationcontroller
                                            //     .onLastformSection();
                                          },
                                          child: Center(
                                            child: Text(
                                              'Create Account',
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
                                    )
                                    : SizedBox(
                                      height: 45,
                                      width:
                                          MediaQuery.of(context).size.width /
                                          6.0,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(purpleColor),
                                        child: InkWell(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                          onTap: () {
                                            formNavgationcontroller
                                                .toNextSection();
                                          },
                                          child: Center(
                                            child: Text(
                                              'Proceed',
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
                          //-- Google Register Button
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              border: Border.all(color: Color(black)),
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              children: [
                                //-- Text
                                Text(
                                  "Or sign up using your google account",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Image.asset(
                                  "assets/images/google.png",
                                  height: 30,
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   height: 45,
                          //   margin: EdgeInsets.only(top: 15),
                          //   decoration: BoxDecoration(
                          //     border: Border.all(color: Color(black)),
                          //     borderRadius: BorderRadius.circular(15),
                          //   ),
                          //   width: MediaQuery.of(context).size.width / 4.0,
                          //   child: Material(
                          //     color: Color(white),
                          //     borderRadius: BorderRadius.circular(15),
                          //     child: InkWell(
                          //       borderRadius: BorderRadius.circular(15),
                          //       onTap: () {},
                          //       child: Center(
                          //         child: Row(
                          //           mainAxisAlignment: MainAxisAlignment.center,
                          //           children: [
                          //             Image.asset(
                          //               "assets/images/google.png",
                          //               height: 30,
                          //               width: 30,
                          //             ),
                          //             Padding(
                          //               padding: const EdgeInsets.only(
                          //                 left: 3.0,
                          //               ),
                          //               child: Text(
                          //                 'Register with Google',
                          //                 style: Theme.of(
                          //                   context,
                          //                 ).textTheme.bodyMedium!.copyWith(
                          //                   fontWeight: FontWeight.w700,
                          //                 ),
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
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
    );
  }
}



/*Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          formNavgationcontroller
                                              .backToPreviousForm();
                                          // formNavgationcontroller
                                          //     .toNextSection();
                                        },
                                        icon: Icon(Icons.arrow_back_ios),
                                      ),
                                      SizedBox(
                                        height: 45,
                                        width:
                                            MediaQuery.of(context).size.width /
                                            4.0,
                                        child: Material(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          color: Color(purpleColor),
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                            onTap: () {
                                              // formNavgationcontroller
                                              //     .onLastformSection();
                                              formNavgationcontroller
                                                  .toNextSection();
                                              print("first");
                                            },
                                            child: Center(
                                              child: Text(
                                                'Come',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ), */

/*

 Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.green,
                    child: GetBuilder<FormController>(
                      builder:
                          (controller) => Column(
                            children: [
                              Container(
                                // color: Colors.black,
                                height:
                                    MediaQuery.of(context).size.height / 2.8,
                                // width: MediaQuery.of(context).size.width / 1.5,
                                child: PageView(
                                  scrollBehavior: ScrollConfiguration.of(
                                    context,
                                  ).copyWith(
                                    dragDevices: {
                                      PointerDeviceKind.touch,
                                      PointerDeviceKind.mouse,
                                    },
                                  ),
                                  controller: controller.pageViewController,
                                  children: [
                                    desktopRegisterForm1(context),
                                    desktopRegisterForm2(context),
                                  ],
                                ),
                              ),
                              //-- Next Button
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 70,
                                      top: 15,
                                    ),
                                    child: Text(
                                      "Next",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ),
                                ],
                              ),
                              //-- Google Register Button
                              Container(
                                height: 45,
                                margin: EdgeInsets.only(top: 35),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(black)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: MediaQuery.of(context).size.width / 4.0,
                                child: Material(
                                  color: Color(white),
                                  borderRadius: BorderRadius.circular(15),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15),
                                    onTap: () {},
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/google.png",
                                            height: 30,
                                            width: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3.0,
                                            ),
                                            child: Text(
                                              'Register with Google',
                                              style: Theme.of(
                                                context,
                                              ).textTheme.bodyMedium!.copyWith(
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                    ),
                  ),

*/