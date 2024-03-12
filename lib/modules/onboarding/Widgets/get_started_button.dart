import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/view.dart';
import 'package:get/get.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 35),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 138, 134, 226),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.normal,
            ),
          ),
          onPressed: () {
            Get.to(() => const HomeScreen());
          },
        ),
      ),
    );
  }
}
