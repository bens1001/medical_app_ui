import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/onboarding/view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical App UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 138, 134, 226),
        ),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}
