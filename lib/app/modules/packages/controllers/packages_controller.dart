import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HealthPackage {
  final String name;
  final List<String> tests;
  final String additionalInfo;
  final int price;
  final String resultTime;
  final String icon;

  HealthPackage({
    required this.name,
    required this.tests,
    required this.additionalInfo,
    required this.price,
    required this.resultTime,
    required this.icon,
  });
}

class PackagesController extends GetxController {
  final searchController = TextEditingController();
  final packages = <HealthPackage>[].obs;
  final filteredPackages = <HealthPackage>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadPackages();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  void loadPackages() {
    packages.assignAll([
      HealthPackage(
        name: 'Essential Health Checkup',
        tests: [
          'CBC, Lipid Profile, Blood Sugar',
          'Liver & Kidney Function Tests',
        ],
        additionalInfo: '',
        price: 999,
        resultTime: 'Result In 24 hrs',
        icon: '📋',
      ),
      HealthPackage(
        name: 'Comprehensive Full Body Checkup',
        tests: ['70+ Tests including Thyroid, Vitamin D & B12'],
        additionalInfo: 'Includes doctor consultation',
        price: 2499,
        resultTime: 'Result In 48 hrs',
        icon: '📋',
      ),
      HealthPackage(
        name: 'Women\'s Wellness Package',
        tests: ['Hormone Panel, PAP Smear, Iron Profile'],
        additionalInfo: 'Designed for women aged 20-45',
        price: 1899,
        resultTime: 'Result In 24 hrs',
        icon: '♀️',
      ),
      HealthPackage(
        name: 'Senior Citizen Health Package',
        tests: ['Comprehensive blood tests, ECG, Chest X-ray'],
        additionalInfo: 'Designed for 60+ age group',
        price: 3499,
        resultTime: 'Result In 24 hrs',
        icon: '📋',
      ),
      HealthPackage(
        name: 'Diabetes Management Package',
        tests: ['HbA1c, Fasting & PP Sugar, Lipid Profile'],
        additionalInfo: 'Includes dietician consultation',
        price: 1299,
        resultTime: 'Result In 12 hrs',
        icon: '📋',
      ),
    ]);
    filteredPackages.assignAll(packages);
  }

  void onSearch(String query) {
    if (query.isEmpty) {
      filteredPackages.assignAll(packages);
    } else {
      filteredPackages.assignAll(
        packages.where(
          (package) =>
              package.name.toLowerCase().contains(query.toLowerCase()) ||
              package.tests.any(
                (test) => test.toLowerCase().contains(query.toLowerCase()),
              ),
        ),
      );
    }
  }

  void onBookPackage(HealthPackage package) {
    Get.snackbar(
      'Book Package',
      'Booking ${package.name} for ₹${package.price}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onBackPressed() {
    Get.back();
  }
}
