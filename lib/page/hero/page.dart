import 'package:flutter/material.dart';

class HeroB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('查看原图'),
        ),
        body: Center(
          child: Hero(
            tag: 'avatar', //唯一标记，前后两个路由页Hero的tag必须相同
            child: Image.asset('images/timg.jpeg'),
          ),
        )
      );
  }
}
