import 'package:flutter/material.dart';

//定义一个controller，来获取输入框的值
TextEditingController _myController = new TextEditingController();


class InputPage extends StatelessWidget {

  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //用户名
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或邮箱',
              prefixIcon: Icon(Icons.person)
            ),
            controller: _myController,
            onChanged: (v){
              //打印输入内容
              // print('$v');
            },
          ),
          //密码
          TextField(
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '您的登录密码',
              prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true
          ),
          //登录按钮
          RaisedButton(
            color: Colors.green,
            colorBrightness: Brightness.dark,
            child: Text('登录'),
            onPressed: () =>{
              //获取用户名
              print(_myController.text)
            },
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
          title: Text('Input'),
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
                  '包括TextField',
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
