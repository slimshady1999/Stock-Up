import 'package:get/get.dart';

class CoursePageNavigationController extends GetxController {
  Rx<int> currentPage = 0.obs;
  void toNextPage(int index) {
    currentPage.value = index;
  }

  Rx<bool> isHovering = false.obs;
}
