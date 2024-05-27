import 'package:flutter/material.dart';
import 'package:bankly/widgets/widgets.dart';

class BalanceDetail extends StatelessWidget {
  const BalanceDetail({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight,
    required this.name,
    required this.date,
    required this.amount,
    required this.url,
  });

  final double phoneWidth;
  final double phoneHeight;
  final String name;
  final String date;
  final String amount;
  final String url;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ProfilePhoto(
                width: phoneWidth * 0.12,
                height: phoneWidth* 0.12,
                urlPhoto: url,
              ),
              SizedBox(width: phoneWidth * 0.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.4,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: phoneHeight * 0.002),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.4,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
            ],
          ),
          
          Text(
            amount,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.4,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}