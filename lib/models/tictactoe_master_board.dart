import './tictactoe_board.dart';

class TicTacToeMasterRow {
  List<TicTacToeBoard> ticTacToeMasterRow = new List<TicTacToeBoard>(3);
  TicTacToeMasterRow(int boardRowNumber) {
    ticTacToeMasterRow[0] = TicTacToeBoard(boardRowNumber, 0);
    ticTacToeMasterRow[1] = TicTacToeBoard(boardRowNumber, 1);
    ticTacToeMasterRow[2] = TicTacToeBoard(boardRowNumber, 2);
  }
}

class TicTacToeMasterBoard {
  List<TicTacToeMasterRow> ticTacToeMasterBoard = new List<TicTacToeMasterRow>(3);
  TicTacToeMasterBoard() {
    ticTacToeMasterBoard[0] = TicTacToeMasterRow(0);
    ticTacToeMasterBoard[1] = TicTacToeMasterRow(1);
    ticTacToeMasterBoard[2] = TicTacToeMasterRow(2);
  }
}