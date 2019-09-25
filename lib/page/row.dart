import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hello world'),
              Text('hello world')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('hello world'),
              Text('hello world')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('hello world'),
              Text('hello world')
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text('hello world', style: TextStyle(fontSize: 30)),
              Text('I am Rain')
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
          title: Text('Row'),
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
                  '当行溢出时，该行没有任何剩余空间可在其Expanded和Flexible 子级之间共享。该行通过在溢出的边缘上绘制黄色和黑色条纹警告框来报告此情况。如果行外侧有空间，则溢出量以红色字体打印。合理利用expanded',
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
