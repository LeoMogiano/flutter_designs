
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight,
    this.labelColor = const Color.fromARGB(255, 255, 236, 179),
    this.iconText = "🍔",
    this.label = "Fast food",
    this.amount = "\$ 450.00",
  });

  final double phoneWidth;
  final double phoneHeight;
  final String iconText;
  final String label;
  final Color labelColor;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: phoneWidth * 0.30,
      height: phoneHeight * 0.16,
      margin: EdgeInsets.only(right: phoneWidth * 0.025),
      decoration: BoxDecoration(     
        color: Colors.white,                  
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 224, 224, 224),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: phoneHeight * 0.02),
          Container(
            width: phoneWidth * 0.13,
            height: phoneWidth * 0.13,
            decoration: BoxDecoration(
              color: labelColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text(iconText, style: const TextStyle(fontSize: 23)))
          ),
          SizedBox(height: phoneHeight * 0.013),
          Text(label,
            style: const TextStyle(
              fontSize: 14,
              letterSpacing: -0.4,
              fontWeight: FontWeight.bold,
              color: Colors.black)
          ),
          SizedBox(height: phoneHeight * 0.005),
          Text(amount,
            style: const TextStyle(
              fontSize: 12,
              letterSpacing: -0.4,
              fontWeight: FontWeight.bold,
              color: Colors.black)
          ),
        ],
      )
    );
  }
}