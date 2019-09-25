import 'package:flutter/material.dart';
import 'package:flutterdemo/page/hero/page.dart';
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Hero动画'),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: InkWell(
            child: Hero(
              tag: 'avatar', //唯一标记，前后两个路由页Hero的tag必须相同
              child: ClipOval(
                child: Image.asset('images/timg.jpeg', width: 50.0,),
              ),
            ),
            onTap: (){
              //打开B路由
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation){
                  return new FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      body: HeroB(),
                    ),
                  );
                }
              )
            );
            },
          ),
        )
      );
  }
}
