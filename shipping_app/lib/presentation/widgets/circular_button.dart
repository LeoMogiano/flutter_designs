
import 'package:flutter/material.dart';
import 'package:shipping_app/config/configs.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    this.backgroundColor = AppColors.lightDark,
    this.onTap,
    required this.icon
  });
  
  final Color backgroundColor;
  final Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.all(12),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}