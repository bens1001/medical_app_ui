import 'package:get/get.dart';

class Message extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          // onboarding screen
          "onboarding_desc": "ابحث عن طبيبك واحجز موعدك بلمسة واحدة.",
          "onboarding_title": "جميع المتخصصين في تطبيق واحد!",
          "button_text": "ابدأ",

          // home screen

          // app bar
          "hello_msg": "مرحباً",
          "user_name": "مستخدم",

          // get started container
          "get_started_container_title": "كيف تشعر؟",
          "get_started_container_desc": "املأ بطاقة طبية الآن",

          // search bar container
          "search_hint": "كيف يمكننا مساعدتك؟",

          // listview doctor containers
          "doctor_list_title": "قائمة الأطباء",
          "see_all": "عرض الكل",
        },
        "en": {
          // onboarding screen
          "onboarding_desc":
              "Find your doctor and make an\n appointment with one tap.",
          "onboarding_title": "All specialists in one app",
          "button_text": "Get Started",

          // home screen

          // app bar
          "hello_msg": "Hello,",
          "user_name": "User",

          // get started container
          "get_started_container_title": "How do you feel?",
          "get_started_container_desc": "Fill out your medical card right now",

          // search bar container
          "search_hint": "How can we help you?",

          // listview doctor containers
          "doctor_list_title": "Doctors List",
          "see_all": "See All",
        },
      };
}
