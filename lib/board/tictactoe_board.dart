import 'package:flutter/material.dart';

import '../scoped-model/main_model.dart';
import '../widgets/tictactoe_tile.dart';

class TicTacToeBoard extends StatelessWidget {
  final int boardRowNumber;
  final int boardColumnNumber;

  final MainModel model;

  TicTacToeBoard(this.model, this.boardRowNumber, this.boardColumnNumber);

  Widget _buildTicTacToeBoardRow(int rowNumber) {
    return Row(
      children: <Widget>[
        TicTacToeTile(model, boardRowNumber, boardColumnNumber, rowNumber, 0),
        TicTacToeTile(model, boardRowNumber, boardColumnNumber, rowNumber, 1),
        TicTacToeTile(model, boardRowNumber, boardColumnNumber, rowNumber, 2),
      ],
    );
  }

  Widget _buildTicTacToeBoard() {
    return Container(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1.0),),
        child: Column(
          children: <Widget>[
            _buildTicTacToeBoardRow(0),
            _buildTicTacToeBoardRow(1),
            _buildTicTacToeBoardRow(2),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTicTacToeBoard();
  }
}
