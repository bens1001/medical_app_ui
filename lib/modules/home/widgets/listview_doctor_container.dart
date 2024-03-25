import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListviewDoctorContainer extends StatelessWidget {
  final String name;
  final String speciality;
  final String rating;

  const ListviewDoctorContainer({
    super.key,
    required String this.name,
    required String this.speciality,
    required String this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 240, 240, 240),
      ),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage:
                      Image.asset('assets/images/profile_pic.png').image,
                  radius: 55,
                ),
                Positioned(
                  bottom: 0,
                  right: 30,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 254, 255),
                      borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            rating,
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              speciality,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
