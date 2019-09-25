import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand, //未定位widget占满stack整个空间
        children: <Widget>[
          Positioned(
            left: 18.0,
            child: Text('hello world'),
          ),
          Positioned(
            top: 18.0,
            child: Text('Your friend'),
          ),
          Container(
            child: Text(
              'I am Rain',
              style: TextStyle(color: Colors.white)
            ),
            color: Colors.green,
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
          title: Text('Stack'),
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
                  'Stack、IndexedStack、Positioned',
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
