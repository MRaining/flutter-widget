import 'package:flutter/material.dart';

class TapPage extends StatefulWidget{
  @override
  _TapPageState createState() => new _TapPageState();
}

class _TapPageState extends State<TapPage> {
  //保存事件名
  String _operation = 'No Gesture detected!';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('单击、双击、长按'),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.teal,
            width: 200.0,
            height: 100.0,
            child: Text(_operation,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () => updateText('Tap'), //点击
          onDoubleTap: () => updateText('DoubleTap'), //双击
          onLongPress: () => updateText('LongPress'), //长按
        ),
      ),
    );
  }
  void updateText(String text){
    //更新显示的事件名
    setState((){
      _operation = text;
    });
  }
}
