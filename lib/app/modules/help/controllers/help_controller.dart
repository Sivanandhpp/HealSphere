import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpCategory {
  final String title;
  final String icon;
  final List<HelpItem> items;

  HelpCategory({required this.title, required this.icon, required this.items});
}

class HelpItem {
  final String title;
  final String description;

  HelpItem({required this.title, required this.description});
}

class HelpController extends GetxController {
  final searchController = TextEditingController();
  final helpCategories = <HelpCategory>[].obs;
  final filteredCategories = <HelpCategory>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadHelpCategories();
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

  void loadHelpCategories() {
    helpCategories.assignAll([
      HelpCategory(
        title: 'Appointment Issues',
        icon: '📅',
        items: [
          HelpItem(
            title: 'Reschedule or cancel appointments',
            description: 'Learn how to modify your appointments',
          ),
          HelpItem(
            title: 'Doctor availability queries',
            description: 'Check doctor schedules and availability',
          ),
          HelpItem(
            title: 'Missed appointment follow-ups',
            description: 'What to do if you miss an appointment',
          ),
        ],
      ),
      HelpCategory(
        title: 'Payments & Insurance',
        icon: '💳',
        items: [
          HelpItem(
            title: 'Payment failures or refunds',
            description: 'Issues with payments and refund process',
          ),
          HelpItem(
            title: 'Supported insurance plans',
            description: 'Check which insurance plans we accept',
          ),
          HelpItem(
            title: 'Billing issues',
            description: 'Questions about your bills and charges',
          ),
        ],
      ),
      HelpCategory(
        title: 'Report Queries',
        icon: '📊',
        items: [
          HelpItem(
            title: 'Understanding test results',
            description: 'How to read and understand your reports',
          ),
          HelpItem(
            title: 'Download or share medical reports',
            description: 'Access and share your test results',
          ),
          HelpItem(
            title: 'Report not received?',
            description: 'What to do if you haven\'t received your report',
          ),
        ],
      ),
    ]);
    filteredCategories.assignAll(helpCategories);
  }

  void onSearch(String query) {
    if (query.isEmpty) {
      filteredCategories.assignAll(helpCategories);
    } else {
      filteredCategories.assignAll(
        helpCategories.where(
          (category) =>
              category.title.toLowerCase().contains(query.toLowerCase()) ||
              category.items.any(
                (item) =>
                    item.title.toLowerCase().contains(query.toLowerCase()) ||
                    item.description.toLowerCase().contains(
                      query.toLowerCase(),
                    ),
              ),
        ),
      );
    }
  }

  void onHelpItemTapped(HelpItem item) {
    Get.snackbar(
      'Help',
      'Opening help for: ${item.title}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onCallSupport() {
    Get.snackbar(
      'Call Support',
      'Calling +1 800 123 4567',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onEmailSupport() {
    Get.snackbar(
      'Email Support',
      'Opening email to support@heal.sphere.com',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onStartChat() {
    Get.snackbar(
      'Start Chat',
      'Starting live chat with support',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onBackPressed() {
    Get.back();
  }
}
