import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget{
  @override
  _AnimationPageState createState() => new _AnimationPageState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;

  initState(){
    super.initState();
    controller = new AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this
    );
    //使用弹性曲线
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceIn
    );
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)..addListener((){
      setState(()=>{});
    });
    //启动动画(正向执行)
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('动画结构'),
      ),
      body: Center(
        child: Image.asset(
          'images/timg.jpeg',
          width: animation.value,
          height: animation.value,
        ),
      )
    );
  }
  @override
  void dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}
