import 'package:flutter/material.dart';
import 'package:mogi_game_01/utils.dart/colors.dart';
import 'package:mogi_game_01/widgets/game_square.dart';


class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    final double phoneWidth = MediaQuery.of(context).size.width;
    final double phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.blueDarkColor,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: phoneWidth * 0.8,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Tic Tac Toe',
                    style: TextStyle(
                      color: AppColors.orangeDarkColor,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: phoneWidth * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GameSquare(phoneWidth: phoneWidth, option: 'X'),
                      GameSquare(phoneWidth: phoneWidth, option: 'O'),
                      GameSquare(phoneWidth: phoneWidth, option: 'X'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GameSquare(phoneWidth: phoneWidth, option: 'O'),
                    GameSquare(phoneWidth: phoneWidth, option: 'X'),
                    GameSquare(phoneWidth: phoneWidth, option: 'O'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GameSquare(phoneWidth: phoneWidth, option: 'X'),
                    GameSquare(phoneWidth: phoneWidth, option: 'O'),
                    GameSquare(phoneWidth: phoneWidth, option: 'X'),
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}


