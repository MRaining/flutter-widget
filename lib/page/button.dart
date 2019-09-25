import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Button'),
        ),
        body: Center(
      child: Column(
        children: <Widget>[
          //RaisedButton, 悬浮按钮
          RaisedButton(
            child: Text("悬浮按钮"),
            onPressed: () => {},
          ),
          // FlatButton, 扁平按钮
          FlatButton(
            child: Text("扁平按钮"),
            onPressed: () => {},
          ),
          //OutlineButton, 线框按钮
          OutlineButton(child: Text("线框按钮"),
            onPressed: () => {},
          ),
          //IconButton, 图标按钮
          IconButton(icon: Icon(Icons.thumb_up),
            onPressed: () => {},
          ),
          //自定义属性按钮
          RaisedButton(
            child: Text("自定义属性按钮"),
            onPressed: () => {},
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          )
        ],
      ),    
    ));
  }
}
