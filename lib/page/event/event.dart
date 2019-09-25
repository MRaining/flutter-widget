import 'package:flutter/material.dart';
import 'package:flutterdemo/page/event/bus.dart';
import 'package:flutterdemo/page/event/sendevent.dart';

class EventPage extends StatelessWidget {
  
  //填充代码区域start
  Widget body(BuildContext context) {
    bus.on('login', (arg){
      print(arg);
    });
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('事件总线'),
      ),
      body: Container(
        child: RaisedButton(
          child: Text('下一页'),
          onPressed: () => {
            //跳转到下一页
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SendEventPage();
            }))
          },
        )
      )
    );
  }
}