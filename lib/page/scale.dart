import 'package:flutter/material.dart';

class ScalePage extends StatefulWidget{
  @override
  _ScalePageState createState() => new _ScalePageState();
}

class _ScalePageState extends State<ScalePage> {
  double _width = 200.0; //通过修改图片宽度来达到缩放效果

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('缩放'),
      ),
      body: Center(
        child: GestureDetector(
          //指定宽度，高度自适应
          child: Image.asset('./images/timg.jpeg', width: _width,),
          onScaleUpdate: (ScaleUpdateDetails e){
            setState(() {
              //缩放倍数在0.8到10倍之间
              _width = 200*e.scale.clamp(.8, 10);
            });
          },
        ),
      )
    );
  }
}
