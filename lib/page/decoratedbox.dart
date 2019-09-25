import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.orange[700]] //背景渐变
          ),
          borderRadius: BorderRadius.circular(3.0), //背景圆角
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 80.0,
            vertical: 18.0,
          ),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
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
          title: Text('DecoratedBox'),
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
                  'chip',
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
