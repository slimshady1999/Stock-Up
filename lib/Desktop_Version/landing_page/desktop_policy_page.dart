import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';
import 'package:stockup/widgets/header_footer/desktop_header_footer/desktop_footer.dart';

class DesktopPolicyPage extends StatelessWidget {
  const DesktopPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: ListView(
          children: [
            //-- Policy Content 1
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
                        "Understand our Privacy Policy",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge!.copyWith(color: Color(black)),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Your Privacy Matters to Us",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      textAlign: TextAlign.center,
                      "At Stock Up, we are committed to protecting your privacy and ensuring a safe and secure\nexperience while using our online course and podcast software \b this Privacy Policy outlines how we collect, use, store,\nand protect your personal information.",
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

            //-- Policy contents 2
            Padding(
              padding: const EdgeInsets.only(top: 65, bottom: 15),
              child: Column(
                children: [
                  //-- Content 1
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Color(darkContainerColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Number Icon
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(black),
                                child: Text(
                                  "1",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Color(white)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Information We Collect",
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style:
                                  Theme.of(
                                    context,
                                  ).textTheme.bodyLarge!.copyWith(),
                              """We collect personal information that you provide when using our services, including but not limited to:
                  
Account Information: Name, email address, payment details, and any other information you provide during registration or updates.
                  
Course & Podcast Data: Data related to the courses you create or enroll in, including course materials, podcast recordings, and related content.
                  
 Usage Data: Information about your interaction with our platform, such as login times, pages visited, and features used.
                  """,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- content 2
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
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
                                backgroundColor: Color(black),
                                child: Text(
                                  "2",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "How We Use Your Information",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(white)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(color: Color(white)),
                              """We use the collected information for the following purposes:
                  
To provide and improve our services, including course creation, podcast recording, hosting, and distribution.

To process payments and handle billing inquiries.

To communicate with you regarding your account, updates, new features, or technical support.

To analyze usage trends to improve our platform and user experience.

To ensure compliance with legal and security obligations.""",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- Content 3
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Color(darkContainerColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Number Icon
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(black),
                                child: Text(
                                  "3",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "How We Protect Your Data",
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style:
                                  Theme.of(
                                    context,
                                  ).textTheme.bodyLarge!.copyWith(),
                              """We employ robust security measures to protect your personal information from unauthorized access, disclosure, alteration, and destruction. This includes encryption, secure servers, and regular security audits to ensure your data remains safe.
                              """,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- content 4
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
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
                                backgroundColor: Color(black),
                                child: Text(
                                  "4",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Sharing Your Information",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(white)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(color: Color(white)),
                              """We do not sell, rent, or trade your personal information. However, we may share your data in the following limited circumstances:
                              
Service Providers: We may share data with trusted third-party vendors who assist in operating our platform, such as payment processors, hosting services, or email service providers. These providers are obligated to keep your information secure.

Legal Compliance: If required by law or to comply with a legal process, we may share your information to protect our rights, your safety, or the safety of others.
                              """,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- content 5
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Color(darkContainerColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Number Icon
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(black),
                                child: Text(
                                  "5",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Cookies and Tracking Technologies",
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style:
                                  Theme.of(
                                    context,
                                  ).textTheme.bodyLarge!.copyWith(),
                              """We use cookies and similar technologies to enhance your user experience, personalize content, and analyze usage patterns. You can control cookies through your browser settings, but disabling cookies may affect your ability to use certain features of the platform.
                              """,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- content 6
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
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
                                backgroundColor: Color(black),
                                child: Text(
                                  "6",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Data Retention",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(white)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(color: Color(white)),
                              """We retain your personal information only for as long as necessary to fulfill the purposes outlined in this policy or as required by law. When your data is no longer needed, we will securely delete or anonymize it.
                              """,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- content 7
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Color(darkContainerColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Number Icon
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(black),
                                child: Text(
                                  "7",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Your Rights and Choices",
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style:
                                  Theme.of(
                                    context,
                                  ).textTheme.bodyLarge!.copyWith(),
                              """You have the right to:
                              
Access, update, or delete your personal information by logging into your account or contacting us directly.

Opt-out of marketing communications at any time.

Request information on how your data is being used and ask for corrections if needed.""",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- content 8
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
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
                                backgroundColor: Color(black),
                                child: Text(
                                  "8",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Changes to This Privacy Policy",
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: Color(white)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(color: Color(white)),
                              """We may update this Privacy Policy from time to time to reflect changes in our services or legal obligations. Any updates will be posted on this page with an updated date. We encourage you to review this policy periodically.
                              """,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //-- Content 9
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Color(darkContainerColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-- Number Icon
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(black),
                                child: Text(
                                  "9",
                                  style: Theme.of(context).textTheme.titleLarge!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Contact Us",
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              textAlign: TextAlign.start,
                              style:
                                  Theme.of(
                                    context,
                                  ).textTheme.bodyLarge!.copyWith(),
                              """If you have any questions or concerns about this Privacy Policy or how we handle your data, please contact us at [contact information].
                              """,
                            ),
                          ),
                        ],
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
