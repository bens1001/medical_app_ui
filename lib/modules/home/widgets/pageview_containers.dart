import 'package:flutter/material.dart';
import 'package:medical_app_ui/modules/home/widgets/pageview_container.dart';

class PageviewContainers extends StatelessWidget {
  const PageviewContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      height: 100,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          PageviewContainer(
            icon: Icons.medical_information,
            text: 'Info',
          ),
          PageviewContainer(
            icon: Icons.surfing_outlined,
            text: 'Surf',
          ),
          PageviewContainer(
            icon: Icons.apple_outlined,
            text: 'Apple',
          ),
          PageviewContainer(
            icon: Icons.public_sharp,
            text: 'Earth',
          ),
        ],
      ),
    );
  }
}
