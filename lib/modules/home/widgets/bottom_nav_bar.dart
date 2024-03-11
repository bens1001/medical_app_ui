import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app_ui/modules/home/controller.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 138, 134, 226),
        unselectedItemColor: Colors.grey,
        currentIndex: controller.selectedTabIndex.value,
        onTap: (index) {
          controller.setSelectedTabIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
