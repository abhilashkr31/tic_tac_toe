import 'package:flutter/material.dart';

import '../scoped-model/main_model.dart';
import '../widgets/tictactoe_tile.dart';

class TicTacToeBoard extends StatefulWidget {
  final int boardRowNumber;
  final int boardColumnNumber;

  final MainModel model;

  TicTacToeBoard(this.model, this.boardRowNumber, this.boardColumnNumber);
  @override
  State<StatefulWidget> createState() {
    return _TicTacToeBoard();
  }
}

class _TicTacToeBoard extends State<TicTacToeBoard> {
  bool boardWon = false;
  Function changeBoardStatus() {
    print("boardRowNumber: " + widget.boardRowNumber.toString());
    print("boardColumnNumber: " + widget.boardColumnNumber.toString());
    setState(() {
      boardWon = true;
    });
  }

  Widget _buildTicTacToeBoardRow(int rowNumber) {
    return Row(
      children: <Widget>[
        TicTacToeTile(widget.model, widget.boardRowNumber,
            widget.boardColumnNumber, rowNumber, 0, changeBoardStatus),
        TicTacToeTile(widget.model, widget.boardRowNumber,
            widget.boardColumnNumber, rowNumber, 1, changeBoardStatus),
        TicTacToeTile(widget.model, widget.boardRowNumber,
            widget.boardColumnNumber, rowNumber, 2, changeBoardStatus),
      ],
    );
  }

  Widget _buildTicTacToeBoard() {
    return Stack(
      children: <Widget>[Container(
        decoration: boardWon
            ? BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstOver),
                  fit: BoxFit.cover,
                  image: AssetImage("assets/O.png"),
                ),
                
                border: Border.all(color: Colors.black, width: 1.0),
              )
            : BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
              ),),Column(
          children: <Widget>[
            _buildTicTacToeBoardRow(0),
            _buildTicTacToeBoardRow(1),
            _buildTicTacToeBoardRow(2),
          ],
        )]
        ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTicTacToeBoard();
  }
}
