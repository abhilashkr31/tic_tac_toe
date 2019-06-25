import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './board/tictactoe_master_board.dart';
import './scoped-model/main_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final MainModel _model = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Tic-Tac-Toe"),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(),
                TicTacToeMasterBoard(_model),
                SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
