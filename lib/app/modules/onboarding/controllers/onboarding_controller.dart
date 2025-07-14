import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healsphere/app/modules/onboarding/views/widgets/onboarding_widget.dart';

class OnboardingController extends GetxController {
  var pageIndex = 0.obs;
  late final pageController = PageController();

  final pages = [
      OnboardingPage(
        image: 'assets/images/onboarding1.png',
        title: 'Book Easily',
        subtitle: 'Search by specialty, location, or availability.\nSkip the wait. Choose a time that works for you.',
      ),
      OnboardingPage(
        image: 'assets/images/onboarding2.png',
        title: 'Secure Health Records',
        subtitle: 'Search by specialty, location, or availability.\nSkip the wait. Choose a time that works for you.',
      ),
      OnboardingPage(
        image: 'assets/images/onboarding3.png',
        title: 'Care That Follows You',
        subtitle: 'Get timely alerts for appointments, medications, and follow-ups. Never miss what matters.',
      ),
    ];

  void nextPage() {
    if (pageIndex.value < 2) {
      pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void prevPage() {
    if (pageIndex.value > 0) {
      pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void onPageChanged(int index) {
    pageIndex.value = index;
  }
}