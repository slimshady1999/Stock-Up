import 'package:flutter/material.dart';
import 'package:stockup/controllers/custom_popup_dialogs_controller/desktop_popup_dialogs_controller/desktop_popup_dialog_controller.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

desktopFooter(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 120),
    height: MediaQuery.of(context).size.height / 2.5,
    width: double.infinity,
    color: Color(black),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text1
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4, top: 25),
                child: Text(
                  "To be informed always",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                ),
              ),
              Text(
                "Sign up for our\nnewsletter",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),

              //-- Subscibe Button
              Container(
                height: 42,
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(white)),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(lightBlack),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      DesktopPopupDialogController.newsletterPopup();
                    },
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
        ),

        legalLicenceagreement(context),
        essentials(context),
        socialMediaLinks(context),
      ],
    ),
  );
}

//-- Legal Licencies and agreements
legalLicenceagreement(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 2.7,
    width: 210,
    child: ListView(
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
            "Licenses",
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
    ),
  );
}

//-- Essentials
essentials(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 2.7,
    width: 210,
    child: ListView(
      children: [
        //--Text
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
            "Get the app",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            "Help & Support",
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
            "Teach on Stockup",
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
    height: MediaQuery.of(context).size.height / 2.7,
    width: 250,
    child: ListView(
      children: [
        //--Text
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
