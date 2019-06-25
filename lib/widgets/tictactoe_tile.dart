import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../scoped-model/main_model.dart';

class TicTacToeTile extends StatefulWidget {
  String tileValue = "";
  final int boardRowNumber;
  final int boardColumnNumber;
  final int rowNumber;
  final int columnNumber;

  final MainModel model;

  TicTacToeTile(this.model, this.boardRowNumber, this.boardColumnNumber,
      this.rowNumber, this.columnNumber);

  @override
  State<StatefulWidget> createState() {
    return _TicTacToeTile();
  }
}

class _TicTacToeTile extends State<TicTacToeTile> {
  @override
  initState() {
    super.initState();
  }

  double _getTileSize(BuildContext context) {
    double sizeTile = 0;
    if (MediaQuery.of(context).size.width <
        MediaQuery.of(context).size.height) {
      sizeTile = (MediaQuery.of(context).size.width - 20) / 9;
    } else {
      sizeTile = (MediaQuery.of(context).size.height - 20) / 9;
    }

    return sizeTile;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return Container(
          width: _getTileSize(context),
          height: _getTileSize(context),
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: RaisedButton(
            color: Colors.white,
            child: Text(widget.tileValue),
            onPressed: widget.model.getClickState(
                    widget.boardRowNumber,
                    widget.boardColumnNumber,
                    widget.rowNumber,
                    widget.columnNumber)
                ? () {
                    setState(() {
                      model.setTileAt(
                          widget.boardRowNumber,
                          widget.boardColumnNumber,
                          widget.rowNumber,
                          widget.columnNumber);
                      widget.tileValue = model.getTileAt(
                          widget.boardRowNumber,
                          widget.boardColumnNumber,
                          widget.rowNumber,
                          widget.columnNumber);
                    });
                  }
                : null,
          ),
        );
      },
    );
  }
}
