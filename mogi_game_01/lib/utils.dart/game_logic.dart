import 'package:flutter/material.dart';

class GameLogic {
  List<String> gameBoard;
  bool player1Turn;
  bool gameOver;
  bool isDraw;
  BuildContext contextGame;

  GameLogic({
    required this.gameBoard,
    required this.player1Turn,
    required this.gameOver,
    required this.isDraw,
    required this.contextGame,
  });

  bool checkWin(String a, String b, String c) {
    return a == b && b == c && a != ' ';
  }

  void checkGameOver() {
    // Check rows
    for (int i = 0; i < 9; i += 3) {
      if (checkWin(gameBoard[i], gameBoard[i + 1], gameBoard[i + 2])) {
        gameOver = true;
        return;
      }
    }

    // Check columns
    for (int i = 0; i < 3; ++i) {
      if (checkWin(gameBoard[i], gameBoard[i + 3], gameBoard[i + 6])) {
        gameOver = true;
        return;
      }
    }

    // Check diagonals
    if (checkWin(gameBoard[0], gameBoard[4], gameBoard[8]) ||
        checkWin(gameBoard[2], gameBoard[4], gameBoard[6])) {
      gameOver = true;
      return;
    }
  }

  void checkAllFilled() {
    if (!gameBoard.contains(' ')) {
      isDraw = true;
    }
  }
}
