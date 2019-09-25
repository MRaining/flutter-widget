import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //平移
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Transform.translate(
              offset: Offset(-20.0, -5.0),
              child: Text('平移'),
            ),
          ),
          //旋转
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Transform.rotate(
              //旋转90度
              angle: math.pi/2,
              child: Text('旋转'),
            )
          ),
          //缩放
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child: Transform.scale(
              scale: 1.5,
              child: Text('缩放'),
            ),
          )
        ],
      ),
    );
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Transform'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(25),
                child: Text(
                  'chip',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: body(context),
              ),
            ],
          ),
        ));
  }
}
