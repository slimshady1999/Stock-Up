import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopLoadingScreen extends GetxController {
  //-- LoadingScreenDialog
  desktopLoadingScreenDialog() {
    return showDialog(
      context: Get.context!,
      builder:
          (context) => SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //color: Colors.blue,
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
