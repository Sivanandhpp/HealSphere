import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;
  final userName = 'Shahid'.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onTabTapped(int index) {
    currentIndex.value = index;
  }

  void onBookNow() {
    // Handle book now action
    Get.snackbar('Booking', 'Book now feature coming soon!');
  }

  void onSearch(String query) {
    // Handle search
    print('Searching for: $query');
  }

  void onQuickAction(String action) {
    // Handle quick actions
    switch (action) {
      case 'Lab Tests':
        Get.toNamed('/lab-tests');
        break;
      case 'Packages':
        Get.toNamed('/packages');
        break;
      case 'Report':
        Get.toNamed('/report');
        break;
      case 'Help':
        Get.toNamed('/help');
        break;
      default:
        Get.snackbar('Action', '$action feature coming soon!');
    }
  }

  void onReschedule() {
    // Handle reschedule appointment
    Get.snackbar('Reschedule', 'Reschedule feature coming soon!');
  }

  void onViewAll() {
    // Handle view all doctors
    Get.snackbar('View All', 'View all doctors feature coming soon!');
  }
}
