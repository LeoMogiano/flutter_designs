import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  static const Color actionColors = Colors.white;
  static const Color backgroundColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: actionColors),
            onPressed: () {},
          ),
          const Text(
            'DIOR',
            style: TextStyle(
              color: actionColors,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: actionColors),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}