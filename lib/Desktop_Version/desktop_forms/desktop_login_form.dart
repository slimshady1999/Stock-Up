import 'package:flutter/material.dart';
import 'package:stockup/widgets/custom_themes_data/custom_colors.dart';

desktopLoginForm(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 0, top: 40),
    width: MediaQuery.of(context).size.width / 4.0,
    child: Form(
      child: Column(
        children: [
          //-- Email form
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width / 4,
            child: TextFormField(
              cursorColor: Color(black),
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(darkContainerColor),
                hintText: "Email",
                hintStyle: Theme.of(context).textTheme.bodyMedium,
                prefixIcon: Icon(Icons.mail, size: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          //-- Password form
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: SizedBox(
              height: 45,
              width: MediaQuery.of(context).size.width / 4,
              child: TextFormField(
                obscureText: true,
                cursorColor: Color(black),
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(darkContainerColor),
                  hintText: "Password",
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  prefixIcon: Icon(Icons.key, size: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),

          //-- Login Button
          Container(
            height: 45,
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width / 6.0,
            child: Material(
              borderRadius: BorderRadius.circular(50),
              color: Color(purpleColor),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //-- Forgot password
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 70),
            child: Row(
              children: [
                Text(
                  "Forgot Password?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Click Here",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
        ],
      ),
    ),
  );
}
