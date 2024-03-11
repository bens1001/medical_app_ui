import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/view.dart';
import 'package:medical_app_ui/modules/onboarding/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 138, 134, 226),
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
