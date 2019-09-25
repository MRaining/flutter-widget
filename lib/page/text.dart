import 'package:flutter/material.dart';

//声明文本样式
const newTextStyle = const TextStyle(
  color: Colors.cyan
);

class TextPage extends StatelessWidget {
  
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      //居中显示
      child: Column(
        children: <Widget>[
          //居中文本
          Text("hello world",
            textAlign: TextAlign.center,
          ),
          //缩略文本
          Text("hello world"*10,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          //文本快捷缩放
          Text("hello world",
            textScaleFactor: 2.0,
          ),
          //文本样式
          Text("hello world",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 40.0,
              height: 2.2, //具体行号等于 fontSize * height
              fontFamily: "Courier",
              background: new Paint()..color=Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed
            )
          ),
          //富文本
          Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Home: '),
                TextSpan(
                  text: 'https://www.baidu.com',
                  style: TextStyle(
                    color: Colors.blue
                  )
                )
              ]
            )
          ),
          //默认文本样式
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text('I am Rain'),
                Text('I am Rain',
                  style: TextStyle(
                    inherit: false,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          //使用声明的自定义文本样式
          Text("custom text style",
            style: newTextStyle,
          )
        ],
      )
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
          title: Text('Text'),
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
                  'Text、RichText、熟练掌握TextStyle、Directionality',
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
