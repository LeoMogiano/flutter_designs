import 'package:flutter/material.dart';
import 'package:education_app/utils.dart/utils.dart';
class EduInfo extends StatelessWidget {
  const EduInfo({
    super.key,
    required this.color,
    required this.color2,
    required this.text,
    required this.count,
    required this.streak,
  });

  final Color color;
  final Color color2;
  final String text;
  final String count;
  final String streak;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.21,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 6),
          Row(
            children: [
                Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.35,
                  color: AppColors.blackText,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                count,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  streak,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.5,
                    
                  ),
                ),
              ),
    
            ],
          ),
    
        ],
      ),
    );
  }
}
