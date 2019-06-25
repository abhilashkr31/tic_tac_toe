import 'package:scoped_model/scoped_model.dart';

import '../models/tictactoe_master_board.dart';

class MainModel extends Model {
  TicTacToeMasterBoard _ticTacToeMasterBoard = new TicTacToeMasterBoard();

  String nextTileValue = "X";
  bool initTicTac = false;
  int nextBoardRow;
  int nextBoardColumn;

  String getTileAt(int boardRowNumber, int boardColumnNumber, int rowNumber,
      int columnNumber) {
    return _ticTacToeMasterBoard
        .ticTacToeMasterBoard[boardRowNumber]
        .ticTacToeMasterRow[boardColumnNumber]
        .ticTacToeBoard[rowNumber]
        .ticTacToeRow[columnNumber]
        .value;
  }

  bool getClickState(int boardRowNumber, int boardColumnNumber, int rowNumber,
      int columnNumber) {
    if (initTicTac) {
      if (_ticTacToeMasterBoard.ticTacToeMasterBoard[nextBoardRow]
              .ticTacToeMasterRow[nextBoardColumn].numClicksAvailable ==
          0) {
        return _ticTacToeMasterBoard
            .ticTacToeMasterBoard[boardRowNumber]
            .ticTacToeMasterRow[boardColumnNumber]
            .ticTacToeBoard[rowNumber]
            .ticTacToeRow[columnNumber]
            .getClickStatus();
      }
      if (boardRowNumber == nextBoardRow &&
          boardColumnNumber == nextBoardColumn) {
        return _ticTacToeMasterBoard
            .ticTacToeMasterBoard[boardRowNumber]
            .ticTacToeMasterRow[boardColumnNumber]
            .ticTacToeBoard[rowNumber]
            .ticTacToeRow[columnNumber]
            .getClickStatus();
      } else {
        return false;
      }
    } else {
      return true;
    }
  }

  void setTileAt(int boardRowNumber, int boardColumnNumber, int rowNumber,
      int columnNumber) {
    _ticTacToeMasterBoard
        .ticTacToeMasterBoard[boardRowNumber]
        .ticTacToeMasterRow[boardColumnNumber]
        .ticTacToeBoard[rowNumber]
        .ticTacToeRow[columnNumber]
        .setValue(nextTileValue);

    nextTileValue = (nextTileValue == "X") ? "O" : "X";
    print(nextTileValue);

    nextBoardRow = rowNumber;
    nextBoardColumn = columnNumber;
    initTicTac = true;

    _ticTacToeMasterBoard.ticTacToeMasterBoard[boardRowNumber]
        .ticTacToeMasterRow[boardColumnNumber]
        .checkBoardValue(rowNumber, columnNumber);

    notifyListeners();
  }

  bool getBoardStatus(int boardRowNumber, int boardColumnNumber) {
    return _ticTacToeMasterBoard.ticTacToeMasterBoard[boardRowNumber]
        .ticTacToeMasterRow[boardColumnNumber]
        .getboardWon();
  }
}
