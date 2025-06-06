import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

tabletFooter(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 120, left: 25, right: 25, bottom: 10),
    height: MediaQuery.of(context).size.height / 3.2,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(lightBlack),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text1
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 0),
                    child: Text(
                      "To be informed always",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    "Sign up for our\nnewsletter",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),

                  //-- Subscibe Button
                  Container(
                    height: 42,
                    margin: const EdgeInsets.only(top: 25),

                    child: Material(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(purpleColor),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {},
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Text(
                              'Subscribe',
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
              legalLicenceagreement(context),
              essentials(context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [socialMediaLinks(context)],
          ),
        ],
      ),
    ),
  );
}

//-- Legal Licencies and agreements
legalLicenceagreement(BuildContext context) {
  return Column(
    children: [
      //--Text
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          "Legal",
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.white),
        ),
      ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          "Copyright",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          "Terms and Conditions",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          "Privacy Policy",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          "Posting Rules",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: Colors.white),
        ),
      ),
    ],
  );
}

//-- Essentials
essentials(BuildContext context) {
  return SizedBox(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Essentials",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: Colors.white),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "E-mail",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Contact us",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Jobs",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Find and expert",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

//-- Essentials
socialMediaLinks(BuildContext context) {
  return SizedBox(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Connect with us @",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(color: Colors.white),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/facebookcolor.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/twittercolor.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/whatsappcolor.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/instagramcolor.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
