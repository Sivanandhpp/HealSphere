import 'package:flutter/material.dart';
import 'package:healsphere/app/core/themes/app_theme.dart';

class Indicator extends StatelessWidget {
  final int current, count;
  const Indicator({required this.current, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: i == current ? AppColors.primary : Colors.grey[300],
          shape: BoxShape.circle,
        ),
      )),
    );
  }
}