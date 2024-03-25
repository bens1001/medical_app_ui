import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/onboarding/Widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/doctor-1.png',
                height: 500,
                width: 500,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'All specialists in one app',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 50, 49, 58),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15, bottom: 20),
                child: Text(
                  'Find your doctor and make an\n appointment with one tap.',
                  style: TextStyle(
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
