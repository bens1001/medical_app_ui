import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app_ui/modules/home/widgets/appbar_title.dart';
import 'package:medical_app_ui/modules/home/widgets/bottom_nav_bar.dart';
import 'package:medical_app_ui/modules/home/widgets/get_started_container.dart';
import 'package:medical_app_ui/modules/home/widgets/listview_category_containers.dart';
import 'package:medical_app_ui/modules/home/widgets/listview_doctor_containers.dart';
import 'package:medical_app_ui/modules/home/widgets/search_bar_container.dart';
import 'package:medical_app_ui/translations/controller.dart';
import 'package:get/get.dart';

class HomeScreenResponsive extends GetResponsiveView<MessageController> {
  @override
  Widget? tablet() {
    // TODO: implement tablet
    return super.tablet();
  }

  @override
  Widget? watch() {
    // TODO: implement watch
    return super.watch();
  }

  @override
  Widget? phone() {
    // TODO: implement phone
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarTitle(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: InkWell(
              onTap: () {
                if (controller.languageValue.value == 'en') {
                  controller.changeLanguageValue('ar');
                } else if (controller.languageValue.value == 'ar') {
                  controller.changeLanguageValue('en');
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
                  // Container(
                  //   height: 150,
                  //   width: double.infinity,
                  //   child: Row(
                  //     children: [
                  //       Flexible(child: SearchBarContainer()),
                  //       const SizedBox(width: 10),
                  //       Flexible(child: GetStartedContainer()),
                  //     ],
                  //   ),
                  // ),
                  const GetStartedContainer(),
                  const SearchBarContainer(),
                  ListviewCategoryContainers(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                    child: Row(
                      children: [
                        Text(
                          'doctor_list_title'.tr,
                          style: const TextStyle(
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'see_all'.tr,
                            style: const TextStyle(
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

  @override
  Widget? desktop() {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarTitle(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: InkWell(
              onTap: () {
                if (controller.languageValue.value == 'en') {
                  controller.changeLanguageValue('ar');
                } else if (controller.languageValue.value == 'ar') {
                  controller.changeLanguageValue('en');
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
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Flexible(child: SearchBarContainer()),
                        const SizedBox(width: 10),
                        Flexible(child: GetStartedContainer()),
                      ],
                    ),
                  ),
                  // const GetStartedContainer(),
                  // const SearchBarContainer(),
                  ListviewCategoryContainers(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                    child: Row(
                      children: [
                        Text(
                          'doctor_list_title'.tr,
                          style: const TextStyle(
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'see_all'.tr,
                            style: const TextStyle(
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
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
 
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
