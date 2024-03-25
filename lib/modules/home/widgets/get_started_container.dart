import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedContainer extends StatelessWidget {
  const GetStartedContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 255, 224, 244),
      ),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Image.asset(
            'assets/images/doctor-2.png', // replace 'your_image.png' with your actual image path
            width: 175,
            height: 175,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'get_started_container_title'.tr,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 50, 49, 58),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    'get_started_container_desc'.tr,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 50, 49, 58),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                ScreenType.Phone.name == "Phone"
                    ? Container()
                    : SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 138, 134, 226),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            minimumSize: const Size(double.infinity, 40),
                          ),
                          child: Text(
                            'button_text'.tr,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
