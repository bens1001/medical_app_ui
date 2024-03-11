import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            color: Color.fromARGB(255, 252, 254, 255),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/doctor-1.png',
                height: 650,
                width: 650,
              ),
              const SizedBox(height: 20),
              Text(
                'All specialists in one app',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              Text(
                'Find your doctor and make an appointment with one tap.',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/home');
                },
                child: const Text('Get Started'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
