import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          spacing: 30.0, //主轴（水平）方向间距
          runSpacing: 4.0, //纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.green, child: Text('A'),),
              label: new Text('Apple'),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.green, child: Text('A'),),
              label: new Text('Apple'),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.green, child: Text('A'),),
              label: new Text('Apple'),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.green, child: Text('A'),),
              label: new Text('Apple'),
            )
          ],
        )
      ],
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
          title: Text('Wrap'),
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
