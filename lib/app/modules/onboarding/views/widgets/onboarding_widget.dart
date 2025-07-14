
import 'package:flutter/material.dart';
import 'package:healsphere/app/core/themes/app_theme.dart';

class OnboardingPage extends StatelessWidget {
  final String image, title, subtitle;
  const OnboardingPage({required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          
          Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primary)),
          const SizedBox(height: 16),
          Text(subtitle, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.black87)),
          const SizedBox(height: 30),
          Image.asset(image, width: double.infinity,),
          
         
        ],
      ),
    );
  }
}