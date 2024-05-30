import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 50,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.network(
                'https://avatars.githubusercontent.com/u/91585994?s=400&u=4db9af5fde852377be7e0c8ad2c0ff14293f84c4&v=4',
                 fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: -5,
            right: 2,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '1',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
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
