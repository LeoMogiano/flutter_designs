import 'package:flutter/material.dart';
import 'package:mogi_game_01/utils.dart/colors.dart';
import 'package:mogi_game_01/utils.dart/game_logic.dart';
import 'package:mogi_game_01/widgets/game_square.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  
  String messageTitle = "Tic Tac Toe";
  late GameLogic gameLogic;

  @override
  void initState() {
    super.initState();
    gameLogic = GameLogic(
      gameBoard: List.filled(9, ' '),
      player1Turn: true,
      gameOver: false,
      isDraw: false,
      contextGame: context,
    );
  }

  @override
  Widget build(BuildContext context) {

    final double phoneWidth = MediaQuery.of(context).size.width;
    final double phoneHeight = MediaQuery.of(context).size.height;

    return PopScope(
      onPopInvoked: (didPop) {
        resetGame();
      },
      child: Scaffold(
        backgroundColor: AppColors.blueDarkColor,
        appBar: AppBar(
          backgroundColor: AppColors.blueColor,
          title: const Text('Tic Tac Toe'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: phoneHeight * 0.1),
                Container(
                  width: phoneWidth * 0.8,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    messageTitle,
                    style: const TextStyle(
                        color: AppColors.orangeDarkColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i < 9; i++)
                      GameSquare(
                        phoneWidth: phoneWidth,
                        option: gameLogic.gameBoard[i],
                        onTap: () {
                          
                          if (gameLogic.gameBoard[i] == ' ' && !gameLogic.gameOver) {
                            setState(() {
                              gameLogic.gameBoard[i] = gameLogic.player1Turn ? 'X' : 'O';
                              messageTitle = !gameLogic.player1Turn
                                  ? "Player X's Turn"
                                  : "Player O's Turn";
                              gameLogic.player1Turn = !gameLogic.player1Turn;
                            });
                          }
                          
                          gameLogic.checkGameOver();
                          if (gameLogic.gameOver) {
                            dynamicDialog(
                              'Game Over',
                              '${gameLogic.player1Turn ? 'O' : 'X'} wins!',
                            );
                            return;
                          }
                          gameLogic.checkAllFilled();
                          if (gameLogic.isDraw) {
                            dynamicDialog('Game Over', 'It\'s a draw!');
                            return;
                          }
                        },
                      ),
                  ],
                ),
              ],
            ),
          ),
        )),
    );
  }

  void dynamicDialog(String title, String content, ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              resetGame();
              Navigator.pop(context);
            },
            child: const Text('Play Again'),
          ),
        ],
      ),
    );
  }

  void resetGame() {
    gameLogic.gameBoard = List.filled(9, ' ');
    gameLogic.isDraw = false;
    gameLogic.player1Turn = true;
    gameLogic.gameOver = false;
    messageTitle = "Tic Tac Toe";
    setState(() {});
  }

}


