import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healsphere/app/core/themes/app_theme.dart';
import 'package:healsphere/app/modules/onboarding/views/widgets/indicator_widget.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SizedBox(
              // height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller.pageController,
                      itemCount: controller.pages.length,
                      onPageChanged: controller.onPageChanged,
                      itemBuilder: (_, i) => controller.pages[i],
                    ),
                  ),
                  Obx(
                    () => Indicator(
                      current: controller.pageIndex.value,
                      count: controller.pages.length,
                    ),
                  ),
                  // const SizedBox(height: 16),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: AppColors.white),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                          ),
                          onPressed: controller.pageIndex.value == 0
                              ? null
                              : controller.prevPage,
                        ),
                        const SizedBox(width: 16),
                        controller.pageIndex.value < 2
                            ? IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.white,
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                ),
                                onPressed: controller.nextPage,
                              )
                            : GestureDetector(
                                onTap: () {
                                  Get.offNamed('/authentication');
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      top: 2,
                                      bottom: 2,
                                      right: 2.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Get Started',
                                          style: TextStyle(
                                            color: AppColors.white,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: AppColors.primary,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
