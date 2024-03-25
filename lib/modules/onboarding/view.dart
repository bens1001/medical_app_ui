import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/onboarding/Widgets/get_started_button.dart';
import 'package:get/get.dart';
import 'package:medical_app_ui/translations/controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final messageCtrl = Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 252, 254, 255),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/doctor-1.png',
                height: 500,
                width: 500,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'onboarding_title'.tr,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 50, 49, 58),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
                child: Text(
                  'onboarding_desc'.tr,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Color.fromARGB(255, 50, 49, 58),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              GetStartedButton(),
            ],
          ),
        ],
      ),
    );
  }
}
