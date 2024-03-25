import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/controller.dart';
import 'package:get/get.dart';

class ListviewDoctorContainers extends StatelessWidget {
  ListviewDoctorContainers({super.key}) {
    if (homeController.doctor_containers.isEmpty) {
      homeController.fill_pageview_doctor_container();
    }
  }

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeController.doctor_containers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: homeController.doctor_containers[index],
          );
        },
      ),
    );
  }
}
