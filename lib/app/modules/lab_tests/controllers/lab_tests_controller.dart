import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LabTest {
  final String name;
  final String description;
  final String resultTime;
  final int price;
  final String icon;

  LabTest({
    required this.name,
    required this.description,
    required this.resultTime,
    required this.price,
    required this.icon,
  });
}

class LabTestsController extends GetxController {
  final searchController = TextEditingController();
  final labTests = <LabTest>[].obs;
  final filteredLabTests = <LabTest>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadLabTests();
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

  void loadLabTests() {
    labTests.assignAll([
      LabTest(
        name: 'Complete Blood Count (CBC)',
        description: 'Detects infections, anemia, and more',
        resultTime: 'Results in 24 hrs',
        price: 350,
        icon: '🩸',
      ),
      LabTest(
        name: 'Blood Sugar Test (Fasting & PP)',
        description: 'Helps monitor glucose levels',
        resultTime: 'Results in 6 hrs',
        price: 200,
        icon: '🩸',
      ),
      LabTest(
        name: 'Lipid Profile',
        description: 'Cholesterol and triglyceride levels',
        resultTime: 'Results in 24 hrs',
        price: 450,
        icon: '🩸',
      ),
      LabTest(
        name: 'Thyroid Function Test',
        description: 'TSH, T3, T4 levels',
        resultTime: 'Results in 24 hrs',
        price: 600,
        icon: '🩸',
      ),
      LabTest(
        name: 'Liver Function Test',
        description: 'SGOT, SGPT, Bilirubin levels',
        resultTime: 'Results in 24 hrs',
        price: 550,
        icon: '🩸',
      ),
      LabTest(
        name: 'Kidney Function Test',
        description: 'Creatinine, Urea, BUN levels',
        resultTime: 'Results in 24 hrs',
        price: 400,
        icon: '🩸',
      ),
    ]);
    filteredLabTests.assignAll(labTests);
  }

  void onSearch(String query) {
    if (query.isEmpty) {
      filteredLabTests.assignAll(labTests);
    } else {
      filteredLabTests.assignAll(
        labTests.where(
          (test) =>
              test.name.toLowerCase().contains(query.toLowerCase()) ||
              test.description.toLowerCase().contains(query.toLowerCase()),
        ),
      );
    }
  }

  void onBookTest(LabTest test) {
    Get.snackbar(
      'Book Test',
      'Booking ${test.name} for ₹${test.price}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onBackPressed() {
    Get.back();
  }
}
