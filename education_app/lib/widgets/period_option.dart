import 'package:flutter/material.dart';
import 'package:education_app/utils.dart/utils.dart';

class PeriodOption extends StatelessWidget {
  const PeriodOption({
    super.key,
    required this.period,
    required this.isSelected,
  });

  final String period;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 18,
      ),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: (isSelected) ? AppColors.blackText : Colors.white,
        border: Border.all(
          color: AppColors.blackText,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          period,
          style: TextStyle(
            height: 1.3,
            fontSize: 16,
            color: (isSelected) ? Colors.white : AppColors.blackText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}