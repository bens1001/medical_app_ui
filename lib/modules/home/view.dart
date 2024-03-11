import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/widgets/appbar_title.dart';
import 'package:medical_app_ui/modules/home/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
      body: Column(
        children: const [
          Text('Hello World'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
