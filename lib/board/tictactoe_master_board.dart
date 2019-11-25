import 'package:flutter/material.dart';

import './tictactoe_board.dart';
import '../scoped-model/main_model.dart';

class TicTacToeMasterBoard extends StatelessWidget {
  final MainModel model;

  TicTacToeMasterBoard(this.model);

  Widget _buildTicTacToeMasterboardRow(int boardRowNumber) {
    return Row(
      children: <Widget>[
        TicTacToeBoard(model, boardRowNumber, 0),
        TicTacToeBoard(model, boardRowNumber, 1),
        TicTacToeBoard(model, boardRowNumber, 2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: <Widget>[
          _buildTicTacToeMasterboardRow(0),
          _buildTicTacToeMasterboardRow(1),
          _buildTicTacToeMasterboardRow(2),
        ],
      ),
    );
  }
}
