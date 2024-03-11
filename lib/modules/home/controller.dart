import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedTabIndex = 0.obs;

  void setSelectedTabIndex(int index) {
    selectedTabIndex.value = index;
  }
}
