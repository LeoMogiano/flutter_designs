import 'package:flutter/material.dart';
import 'package:mogi_game_01/utils.dart/colors.dart';

class GameSquare extends StatefulWidget {
  const GameSquare({
    super.key,
    required this.phoneWidth,
    required this.option,
  });

  final double phoneWidth;
  final String option;

  @override
  State<GameSquare> createState() => _GameSquareState();
  
}

class _GameSquareState extends State<GameSquare> {
  
  @override
  Widget build(BuildContext context) {

    final double squareSize = widget.phoneWidth * 0.22;

    return Container(
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
    );
  }
}