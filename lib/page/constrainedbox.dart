import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity,
              minHeight: 50.0
            ),
            child: Container(
              height: 5.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
              ),
            ),
          ),
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: Container(
              height: 5.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              ),
            ),
          )
        ],
      )
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
          title: Text('ConstrainedBox & SizedBox'),
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
