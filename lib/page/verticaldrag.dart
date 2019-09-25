import 'package:flutter/material.dart';

class VerticalDragPage extends StatefulWidget{
  @override
  _VerticalDragPageState createState() => new _VerticalDragPageState();
}

class _VerticalDragPageState extends State<VerticalDragPage> {
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('单一方向拖动'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: 100.0,
            child: GestureDetector(
              child: CircleAvatar(
                child: Text('A'),
              ),
              //垂直方向拖动事件
              onVerticalDragUpdate: (DragUpdateDetails e){
                setState(() {
                  _top += e.delta.dy;
                });
              },
            ),
          )
        ],
      )
    );
  }
}
