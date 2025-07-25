import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healsphere/app/core/themes/app_theme.dart';
import 'package:healsphere/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginView extends GetView<AuthenticationController> {
  const LoginView({super.key});

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
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/login.png', height: 200),
              const SizedBox(height: 40),
              IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  // controller.phoneNumber.value = phone.completeNumber;
                },
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
                    controller.navigateToOtp();
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: AppColors.white),
                  ),
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
