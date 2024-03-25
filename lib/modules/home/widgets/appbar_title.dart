import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarTitle extends StatelessWidget {
  AppBarTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Text(
            'hello_msg'.tr,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, left: 5),
          child: Text(
            'user_name'.tr,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
