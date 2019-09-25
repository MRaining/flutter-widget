import 'package:flutter/material.dart';

class MyNotification extends Notification{
  MyNotification(this.msg);
  final String msg;
}

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState(){
    return new _NotificationPageState();
  }
}

class _NotificationPageState extends State<NotificationPage> {
  String _msg ='';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('通知'),
        ),
        body: Container(
          child: NotificationListener<MyNotification>(
            onNotification: (notification){
              setState(() {
                _msg += notification.msg+' ';
              });
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Builder(
                    builder: (context){
                      return RaisedButton(
                        //按钮点击时分发通知
                        onPressed: () => MyNotification('Hi').dispatch(context),
                        child: Text('Send Notification'),
                      );
                    },
                  ),
                  Text(_msg)
                ],
              ),
            ),
          ),
        )
      );
  }
}
