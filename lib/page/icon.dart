import 'package:flutter/material.dart';

//定义字体图标
String icons = "\uE914\uE000\uE90D";

class IconPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //展示字体图标
          Text(icons,
            style: TextStyle(
              fontFamily: 'MaterialIcons',
              fontSize: 44,
              color: Colors.green
            ),
          ),
          //通过IconData显示图标
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.accessible, color: Colors.blue),
              Icon(Icons.error, color: Colors.blue),
              Icon(Icons.fingerprint, color: Colors.blue)
            ],
          ),
          //展示自定义字体图标
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                MyIcons.scenic,
                size: 40,
                color: Colors.purple,
              ),
              Icon(
                MyIcons.food,
                size: 40,
                color: Colors.purple
              )
            ],
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
          title: Text('Icon'),
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
                  'icon',
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

//将字体图标定义成静态常量
class MyIcons{
  //景点
  static const IconData scenic = const IconData(
    0xe645,
    fontFamily: 'iconFont',
    matchTextDirection: true
  );
  //餐饮
  static const IconData food = const IconData(
    0xe644,
    fontFamily: 'iconFont',
    matchTextDirection: true
  );
}