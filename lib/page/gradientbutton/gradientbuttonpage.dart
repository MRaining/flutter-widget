import 'package:flutter/material.dart';
import 'package:flutterdemo/page/gradientbutton/gradientbutton.dart';

class GradientButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('渐变按钮'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            GradientButton(
              colors: [Colors.orange,Colors.red],
              height: 50.0,
              child: Text("Submit"),
              onTap:onTap ,
            ),
            GradientButton(
              height: 50.0,
              colors: [Colors.lightGreen, Colors.green[700]],
              child: Text("Submit"),
              onTap: onTap,
            ),
            GradientButton(
              height: 50.0,
              colors: [Colors.lightBlue[300], Colors.blueAccent],
              child: Text("Submit"),
              onTap: onTap,
            ),
          ],
        ),
      )
    );
  }
  onTap(){
    print("button click");
  }
}
