
import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.width,
    required this.height, 
    this.color = const Color.fromARGB(255, 189, 189, 189),
    this.urlPhoto =  'https://www.wonderwall.com/wp-content/uploads/sites/2/2024/01/shutterstock_editorial_14008752c.jpg?w=700',
  });

  final double width;
  final double height;
  final Color color;
  final String urlPhoto;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: 1),
      ),
      child: ClipOval(
        child: Image.network(
          urlPhoto,
          fit: BoxFit.cover,
          width: width,
          height: height
        ),
      ),
    );
  }
}