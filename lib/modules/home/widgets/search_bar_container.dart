import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 240, 240, 240),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Color.fromARGB(158, 158, 158, 158),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextField(
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    hintText: 'search_hint'.tr,
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(158, 158, 158, 158),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
