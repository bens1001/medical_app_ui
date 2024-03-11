import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageviewContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  PageviewContainer({
    super.key,
    required IconData this.icon,
    required String this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 240, 240, 240),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color.fromARGB(255, 138, 134, 226),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
