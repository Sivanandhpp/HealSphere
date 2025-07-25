import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healsphere/app/core/themes/app_theme.dart';
import 'package:healsphere/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:pinput/pinput.dart';

class OtpView extends GetView<AuthenticationController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                'Otp Verification',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Otp Will Be Sent To Your Registered Whats App Number For Verification',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/otp.png', height: 200),
              const SizedBox(height: 40),
              Pinput(
                length: 6,
                onCompleted: (pin) {
                  // controller.verifyOtp(pin);
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text("Didn't Receive It? [Resend OTP In 30s]"),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed('/home');
                  },
                  child: Text('Done', style: TextStyle(color: AppColors.white)),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
