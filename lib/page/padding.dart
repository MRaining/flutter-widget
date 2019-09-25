import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            //左边添加8像素补白
            padding: const EdgeInsets.only(
              left: 8.0
            ),
            child: Text('hello world'),
          ),
          Padding(
            //上下各添加8像素补白
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('hello world'),
          ),
          Padding(
            // 分别指定四个方向的补白
            padding: const EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),
            child: Text("Your friend"),
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
          title: Text('Padding'),
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
                  'padding',
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
