import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 5),
          child: Text(
            'Hello,',
            style: TextStyle(
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
            'User',
            style: TextStyle(
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
