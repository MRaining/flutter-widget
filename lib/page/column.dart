import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: <Widget>[
          Text('hello world'),
          Container(
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Text('hello world')
              ],
            ),
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
          title: Text('Column'),
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
                  '当Column具有一个或多个Expanded或Flexible子项，并且放在另一个Column，ListView或其他不为Column提供最大高度约束的上下文中时，您将在运行时获得一个异常，说明有非零弯曲的孩子，但垂直约束是无界限的。',
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
