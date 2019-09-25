import 'package:flutter/material.dart';
import 'package:flutterdemo/page/event/bus.dart';

class SendEventPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
        //todo 编写自己的代码

        );
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('发送事件'),
      ),
      body: Container(
        child: RaisedButton(
          child: Text('发送事件'),
          onPressed: () => {
            //发送事件
            bus.emit("login", '已登录')
          },
        ),
      )
    );
  }
}
