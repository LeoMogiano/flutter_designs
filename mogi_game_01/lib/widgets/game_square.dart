import 'package:flutter/material.dart';
import 'package:mogi_game_01/utils.dart/colors.dart';

class GameSquare extends StatefulWidget {
  const GameSquare({
    super.key,
    required this.phoneWidth,
    required this.option,
    required this.onTap,
  });

  final double phoneWidth;
  final String option;
  final VoidCallback onTap;

  @override
  State<GameSquare> createState() => _GameSquareState();
  
}

class _GameSquareState extends State<GameSquare> {
  
  @override
  Widget build(BuildContext context) {

    final double squareSize = widget.phoneWidth * 0.22;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: squareSize,
        height: squareSize,
        decoration: BoxDecoration(
          color: AppColors.blueColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            widget.option,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontSize: 50,
              fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}