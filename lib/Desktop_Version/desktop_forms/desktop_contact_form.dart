import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockup/controllers/form_controller/contact_form_controller.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

final contactFormController = Get.put(ContactFormController());
desktopContactForm(BuildContext context) {
  return Form(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50),

        //-- Name |
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width / 4,
          child: TextFormField(
            cursorColor: Color(black),
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(darkContainerColor),
              hintText: "Name",
              hintStyle: Theme.of(context).textTheme.bodySmall,
              prefixIcon: Icon(Icons.person_3, size: 20),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),

        //-- Email |
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width / 4,
            child: TextFormField(
              cursorColor: Color(black),
              style: Theme.of(context).textTheme.bodyMedium,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(darkContainerColor),
                hintText: "Email",
                hintStyle: Theme.of(context).textTheme.bodySmall,
                prefixIcon: Icon(Icons.mail, size: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),

        //-- Website issues
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: 50,
            //width: MediaQuery.of(context).size.width / 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(darkContainerColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => DropdownButton<String>(
                  hint: Text(
                    "What are your issues?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  style: Theme.of(context).textTheme.bodyMedium,
                  underline: Spacer(),
                  value:
                      contactFormController.selectedIssuesController.value == ""
                          ? null
                          : contactFormController
                              .selectedIssuesController
                              .value,
                  items:
                      contactFormController.websiteIssuesList
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                  onChanged: (newValue) {
                    if (newValue != null) {
                      contactFormController.websiteIssues(newValue);
                    }
                  },
                ),
              ),
            ),
          ),
        ),

        //-- Message
        Container(
          margin: EdgeInsets.only(top: 25),
          // height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.height / 1.6,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              cursorColor: Color(black),
              // maxLength: 150,
              maxLines: 5,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                focusColor: Color(darkContainerColor),
                hintText: "Message",
                filled: true,
                // hoverColor: Color.fromARGB(255, 246, 224, 255),
                fillColor: Color(darkContainerColor),
                hintStyle: Theme.of(context).textTheme.bodySmall,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),

        //-- Contact Button
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 45,
            margin: EdgeInsets.only(top: 25),
            width: MediaQuery.of(context).size.width / 6.0,
            child: Material(
              borderRadius: BorderRadius.circular(50),
              color: Color(purpleColor),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  // formNavgationcontroller
                  //     .onLastformSection();
                },
                child: Center(
                  child: Text(
                    'Contact Us',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
  );
}



/*
-- Phone Number
            Container(
              margin: EdgeInsets.only(left: 25),
              height: 45,
              width: MediaQuery.of(context).size.width / 7.5,
              child: TextFormField(
                cursorColor: Color(black),
                style: Theme.of(context).textTheme.bodyMedium,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(darkContainerColor),
                  hintText: "Phone Number",
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  prefixIcon: Icon(Icons.phone, size: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),



              //-- Location
              Container(
                margin: EdgeInsets.only(left: 25),
                height: 45,
                width: MediaQuery.of(context).size.width / 7.5,
                child: TextFormField(
                  cursorColor: Color(black),
                  style: Theme.of(context).textTheme.bodyMedium,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(darkContainerColor),
                    hintText: "Location",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    prefixIcon: Icon(Icons.location_on, size: 20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
            ), */