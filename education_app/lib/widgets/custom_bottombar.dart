
import 'package:education_app/utils.dart/utils.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
      
        border: Border(
          top: BorderSide(
            color: Colors.grey[400]!,
            width: 0.75,
          ),
        ),
        
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OptionsBar(
                color: AppColors.blackText,
                icon: Icons.home_outlined,
                iconSize: 30,
                iconColor: Colors.white,
              ),
              OptionsBar(
                color: Colors.white,
                icon: Icons.calendar_month_outlined,
                iconSize: 30,
                iconColor: Colors.black,
              ),
              OptionsBar(
                color: Colors.white,
                icon: Icons.notifications_none_outlined,
                iconSize: 30,
                iconColor: Colors.black,
              ),
              OptionsBar(
                color: Colors.white,
                icon: Icons.person_outline,
                iconSize: 30,
                iconColor: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OptionsBar extends StatelessWidget {
  const OptionsBar({
    super.key,
    required this.color,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
  });

  final Color color;
  final Color iconColor;
  final IconData icon;
  final double iconSize;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
        onPressed: () {},
      ),
    );
  }
}
