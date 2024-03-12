import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/controller.dart';
import 'package:get/get.dart';

class ListviewCategoryContainers extends StatelessWidget {
  ListviewCategoryContainers({super.key}) {
    if (homeController.category_containers.isEmpty) {
      homeController.fill_pageview_category_container();
    }
  }

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeController.category_containers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: homeController.category_containers[index],
          );
        },
      ),
    );
  }
}
