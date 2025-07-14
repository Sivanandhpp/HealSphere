import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var pageIndex = 0.obs;
  late final pageController = PageController();

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