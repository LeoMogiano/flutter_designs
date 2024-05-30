
import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              color: Colors.green[50],
              shape: BoxShape.circle,
            ),
            child: const Text(
              'L',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '1',
                style: TextStyle(
      color: Colors.white,
      fontSize: 10,
      fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
