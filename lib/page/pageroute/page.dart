import 'package:flutter/material.dart';

class PageB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('导航页面'),
        ),
        body: Container(
          child: Center(
            child: Text('这是另一个页面'),
          ),
        )
      );
  }
}
