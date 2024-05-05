
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
    required this.phoneWidth,
    required this.phoneHeight,
  });

  final double phoneWidth;
  final double phoneHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: phoneWidth * 0.9,
      height: phoneHeight * 0.22,
      decoration: BoxDecoration(
        color: const Color(0xFFE3FB0F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: [
        SizedBox(height: phoneHeight * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: phoneWidth * 0.3,
              child: Stack(
                children: [
                  Container(
                    width: phoneWidth * 0.1,
                    height: phoneWidth * 0.1,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors
                          .red, // Cambia esto al primer color que quieras
                    ),
                  ),
                  Positioned(
                    left: phoneWidth * 0.05,
                    child: Container(
                      width: phoneWidth * 0.1,
                      height: phoneWidth * 0.1,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors
                            .orange, // Cambia esto al segundo color que quieras
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: phoneWidth * 0.02),
            Row(
              children: [
                const Icon(Icons.account_balance_outlined, size: 30, color: Colors.black),
                SizedBox(width: phoneWidth * 0.01),
                const Text("DS Bank",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                ),
              ],
            )
          ],
        ),
        SizedBox(height: phoneHeight * 0.038),
        Row(
          children: [
            SizedBox(width: phoneWidth * 0.08),
            Text("Balance",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600])),
            SizedBox(width: phoneWidth * 0.01),
            Icon(Icons.remove_red_eye_outlined,
                size: 20, color: Colors.grey[600]),
          ],
        ),
        SizedBox(height: phoneHeight * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("\$ 24,000.98",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    letterSpacing: -1.0)),
            SizedBox(width: phoneWidth * 0.1),
            const Text("VISA",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    letterSpacing: -1.0)),
          ],
        ),
      ]),
    );
  }
}
