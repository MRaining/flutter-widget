import 'package:flutter/material.dart';

class CheckboxPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return SwitchState();
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Checkbox'),
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
                  '复选框，允许用户从一组中选择多个选项',
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
//定义父widget管理选中状态
class SwitchState extends StatefulWidget{
  @override
  _SwitchState createState() => new _SwitchState();
}
//
class _SwitchState extends State<SwitchState>{
  //维护复选框状态
  bool _checkboxSelected = false; 
  //维护开关状态
  bool _switchSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //复选框
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.green,
          onChanged: (value){
            setState((){
              _checkboxSelected = value;
            });
          },
        ),
        //开关
        Switch(
          value: _switchSelected,
          onChanged: (value){
            setState(() {
              _switchSelected = value;
            });
          },
          activeColor: Colors.green,
        ),
      ],
    );
  }
}