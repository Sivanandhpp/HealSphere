import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      _OnboardingPage(
        image: 'assets/images/onboarding1.png',
        title: 'Book Easily',
        subtitle: 'Search by specialty, location, or availability.\nSkip the wait. Choose a time that works for you.',
      ),
      _OnboardingPage(
        image: 'assets/images/onboarding2.png',
        title: 'Secure Health Records',
        subtitle: 'Search by specialty, location, or availability.\nSkip the wait. Choose a time that works for you.',
      ),
      _OnboardingPage(
        image: 'assets/images/onboarding3.png',
        title: 'Care That Follows You',
        subtitle: 'Get timely alerts for appointments, medications, and follow-ups. Never miss what matters.',
      ),
    ];

    return Scaffold(
      
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 40),
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: pages.length,
                onPageChanged: controller.onPageChanged,
                itemBuilder: (_, i) => pages[i],
              ),
            ),
            Obx(() => _Indicator(current: controller.pageIndex.value, count: pages.length)),
            const SizedBox(height: 16),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
                  onPressed: controller.pageIndex.value == 0 ? null : controller.prevPage,
                ),
                const SizedBox(width: 16),
                controller.pageIndex.value < 2
                    ? IconButton(
                        icon: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                        onPressed: controller.nextPage,
                      )
                    : ElevatedButton(
                        onPressed: () {
                          // Navigate to next screen
                        },
                        child: const Text('Get Start'),
                      ),
              ],
            )),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _OnboardingPage extends StatelessWidget {
  final String image, title, subtitle;
  const _OnboardingPage({required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          const SizedBox(height: 32),
           Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue)),
          const SizedBox(height: 16),
          Text(subtitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black87)),
          const SizedBox(height: 24),
          Image.asset(image, width: double.infinity,),
          
         
        ],
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  final int current, count;
  const _Indicator({required this.current, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: i == current ? Colors.blue : Colors.grey[300],
          shape: BoxShape.circle,
        ),
      )),
    );
  }
}