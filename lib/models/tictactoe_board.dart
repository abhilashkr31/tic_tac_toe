import './tictactoe_tile_model.dart';

class TicTacToeBoardRow {
  List<TicTacToeTile> ticTacToeRow = new List<TicTacToeTile>(3);
  TicTacToeBoardRow(int boardRowNumber, int boardColumnNumber, int rowNumber) {
    ticTacToeRow[0] =
        TicTacToeTile(boardRowNumber, boardColumnNumber, rowNumber, 0);
    ticTacToeRow[1] =
        TicTacToeTile(boardRowNumber, boardColumnNumber, rowNumber, 1);
    ticTacToeRow[2] =
        TicTacToeTile(boardRowNumber, boardColumnNumber, rowNumber, 2);
  }
}

class TicTacToeBoard {
  String boardValue = "";
  bool boardWon = false;

  int numClicksAvailable = 9;

  List<TicTacToeBoardRow> ticTacToeBoard = new List<TicTacToeBoardRow>(3);
  TicTacToeBoard(int boardRowNumber, int boardColumnNumber) {
    ticTacToeBoard[0] = TicTacToeBoardRow(boardRowNumber, boardColumnNumber, 0);
    ticTacToeBoard[1] = TicTacToeBoardRow(boardRowNumber, boardColumnNumber, 1);
    ticTacToeBoard[2] = TicTacToeBoardRow(boardRowNumber, boardColumnNumber, 2);
  }

  String getboardValue() {
    return this.boardValue;
  }

  void setboardValue(String boardValue) {
    this.boardValue = boardValue;
    this.boardWon = true;
    print("setting board to " + this.boardValue);
    print("boardWon " + this.boardWon.toString());
  }

  bool getboardWon() {
    return this.boardWon;
  }

  bool checkBoardValue(int rowNumber, int columnNumber) {
    String rowColumnValue =
        ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber].value;

    this.numClicksAvailable--;
    if (this.getboardWon()) {
      return false;
    }

    if (rowNumber == 0 && columnNumber == 0) {
      if (ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 2].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 2].ticTacToeRow[columnNumber + 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 0 && columnNumber == 1) {
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 2].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 0 && columnNumber == 2) {
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 2].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 2].ticTacToeRow[columnNumber - 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 1 && columnNumber == 0) {
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 1 && columnNumber == 1) {
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 1 && columnNumber == 2) {
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber + 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 2 && columnNumber == 0) {
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber - 2].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 2 && columnNumber == 1) {
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber + 1].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber - 2].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    if (rowNumber == 2 && columnNumber == 2) {
      if (ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber].ticTacToeRow[columnNumber - 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber - 2].ticTacToeRow[columnNumber].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
      if (ticTacToeBoard[rowNumber - 1].ticTacToeRow[columnNumber - 1].value ==
              rowColumnValue &&
          ticTacToeBoard[rowNumber - 2].ticTacToeRow[columnNumber - 2].value ==
              rowColumnValue) {
        this.setboardValue(rowColumnValue);
      }
    }
    return this.getboardWon();
  }
}
