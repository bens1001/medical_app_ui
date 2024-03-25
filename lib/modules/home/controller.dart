import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app_ui/modules/home/widgets/listview_category_container.dart';
import 'package:medical_app_ui/modules/home/widgets/listview_doctor_container.dart';

class HomeController extends GetxController {
  final selectedTabIndex = 0.obs;

  void setSelectedTabIndex(int index) {
    selectedTabIndex.value = index;
  }

  final List<IconData> icons = [
    Icons.medical_information,
    Icons.hearing_outlined,
    Icons.medication_rounded,
    Icons.healing_rounded,
  ];

  final List<String> texts = [
    'General',
    'Otolaryngology',
    'Pharmacy',
    'Aid',
  ];

  var category_containers = [];

  final List<String> names = [
    'Dr. John Doe',
    'Dr. Jane Doe',
    'Dr. James Doe',
    'Dr. Jessica Doe',
    'Dr. Jack Doe',
    'Dr. Jill Doe',
    'Dr. Jake Doe',
    'Dr. Jada Doe',
    'Dr. Jaden Doe',
    'Dr. Jace Doe',
    'Dr. Jade Doe',
    'Dr. Jagger Doe',
    'Dr. Jaiden Doe',
    'Dr. Jaina Doe',
    'Dr. Jalen Doe',
    'Dr. Jamison Doe',
    'Dr. Janessa Doe',
  ];

  final List<String> specialities = [
    'Cardiologist',
    'Dermatologist',
    'Gynecologist',
    'Neurologist',
    'Oncologist',
    'Pediatrician',
    'Psychiatrist',
    'Radiologist',
    'Surgeon',
    'Urologist',
    'Cardiologist',
    'Dermatologist',
    'Gynecologist',
    'Neurologist',
    'Oncologist',
    'Pediatrician',
    'Psychiatrist',
  ];

  final List<String> ratings = [
    '4.5',
    '3.8',
    '4.0',
    '4.2',
    '4.7',
    '4.3',
    '4.6',
    '4.9',
    '4.1',
    '4.8',
    '4.5',
    '3.8',
    '4.0',
    '4.2',
    '4.7',
    '4.3',
    '4.6',
  ];

  var doctor_containers = [];

  fill_pageview_category_container() {
    for (int i = 0; i < icons.length; i++) {
      category_containers.add(
        ListviewCategoryContainer(
          icon: icons[i],
          text: texts[i],
        ),
      );
    }
  }

  fill_pageview_doctor_container() {
    for (int i = 0; i < names.length; i++) {
      doctor_containers.add(
        ListviewDoctorContainer(
          name: names[i],
          speciality: specialities[i],
          rating: ratings[i],
        ),
      );
    }
  }
}
