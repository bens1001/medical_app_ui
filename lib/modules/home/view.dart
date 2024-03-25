import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/widgets/appbar_title.dart';
import 'package:medical_app_ui/modules/home/widgets/bottom_nav_bar.dart';
import 'package:medical_app_ui/modules/home/widgets/get_started_container.dart';
import 'package:medical_app_ui/modules/home/widgets/listview_category_containers.dart';
import 'package:medical_app_ui/modules/home/widgets/listview_doctor_containers.dart';
import 'package:medical_app_ui/modules/home/widgets/search_bar_container.dart';
import 'package:medical_app_ui/translations/controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final messageCtrl = Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarTitle(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: InkWell(
              onTap: () {
                if (messageCtrl.languageValue.value == 'en') {
                  messageCtrl.changeLanguageValue('ar');
                } else if (messageCtrl.languageValue.value == 'ar') {
                  messageCtrl.changeLanguageValue('en');
                }
              },
              child: CircleAvatar(
                backgroundImage:
                    Image.asset('assets/images/profile_pic.png').image,
                radius: 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Column(
                children: [
                  const GetStartedContainer(),
                  const SearchBarContainer(),
                  ListviewCategoryContainers(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                    child: Row(
                      children: [
                        const Text(
                          'Doctor List',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(158, 158, 158, 158),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListviewDoctorContainers(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
