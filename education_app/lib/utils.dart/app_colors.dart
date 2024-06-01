import 'package:flutter/material.dart';

class AppColors {
  static const Color yellow = Color(0xFFF8E9C8);
  static const Color yellowDark = Color(0xFFE8DAB2);
  static const Color green = Color(0xFFDEECEC);
  static const Color greenDark = Color(0xFFC7D8E3);
  static const Color purple = Color(0xFFE9D9F0);
  static const Color purpleDark = Color(0xFFD9C2E1);
  static const Color pink = Color(0xFFF9D9E9);
  static const Color pinkDark = Color(0xFFE9C2D9);
  static const Color backgroundColor = Colors.white;
  static const Color blackText = Color(0xFF242424);
  static const Color whiteText = Colors.white;

  static Color getShade(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
}