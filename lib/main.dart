import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
//import 'package:flutter/rendering.dart';

import './board/tictactoe_master_board.dart';
import './scoped-model/main_model.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

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
          body: Center(
              child: Column(
            children: <Widget>[
              Expanded(
                child: SizedBox(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(),
                  TicTacToeMasterBoard(_model),
                  SizedBox()
                ],
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
