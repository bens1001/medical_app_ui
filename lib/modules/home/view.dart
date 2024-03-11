import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app_ui/modules/home/widgets/appbar_title.dart';
import 'package:medical_app_ui/modules/home/widgets/bottom_nav_bar.dart';
import 'package:medical_app_ui/modules/home/widgets/get_started_container.dart';
import 'package:medical_app_ui/modules/home/widgets/pageview_containers.dart';
import 'package:medical_app_ui/modules/home/widgets/search_bar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 5),
            child: CircleAvatar(
              backgroundImage:
                  Image.asset('assets/images/profile_pic.jpg').image,
              radius: 25,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            GetStartedContainer(),
            SearchBarContainer(),
            PageviewContainers(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
