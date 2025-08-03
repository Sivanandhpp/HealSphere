import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalReport {
  final String testName;
  final String date;
  final String status;
  final String reportType;

  MedicalReport({
    required this.testName,
    required this.date,
    required this.status,
    required this.reportType,
  });
}

class ReportController extends GetxController {
  final searchController = TextEditingController();
  final reports = <MedicalReport>[].obs;
  final filteredReports = <MedicalReport>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadReports();
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

  void loadReports() {
    reports.assignAll([
      MedicalReport(
        testName: 'CBC - Complete Blood Count',
        date: 'June 28, 2025',
        status: 'Available',
        reportType: 'Blood Test',
      ),
      MedicalReport(
        testName: 'Lipid Profile',
        date: 'June 25, 2025',
        status: 'Available',
        reportType: 'Blood Test',
      ),
      MedicalReport(
        testName: 'Thyroid Function Test',
        date: 'June 20, 2025',
        status: 'Available',
        reportType: 'Blood Test',
      ),
      MedicalReport(
        testName: 'Blood Sugar Test',
        date: 'June 15, 2025',
        status: 'Available',
        reportType: 'Blood Test',
      ),
      MedicalReport(
        testName: 'Liver Function Test',
        date: 'June 10, 2025',
        status: 'Available',
        reportType: 'Blood Test',
      ),
    ]);
    filteredReports.assignAll(reports);
  }

  void onSearch(String query) {
    if (query.isEmpty) {
      filteredReports.assignAll(reports);
    } else {
      filteredReports.assignAll(
        reports.where(
          (report) =>
              report.testName.toLowerCase().contains(query.toLowerCase()) ||
              report.reportType.toLowerCase().contains(query.toLowerCase()),
        ),
      );
    }
  }

  void onDownloadReport(MedicalReport report) {
    Get.snackbar(
      'Download',
      'Downloading ${report.testName} report',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onShareReport(MedicalReport report) {
    Get.snackbar(
      'Share',
      'Sharing ${report.testName} report',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onBackPressed() {
    Get.back();
  }
}
