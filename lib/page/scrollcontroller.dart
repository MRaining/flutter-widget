import 'package:flutter/material.dart';

class ScrollControllerPage extends StatefulWidget{
  @override
  ScrollControllerState createState(){
    return new ScrollControllerState();
  }
}

class ScrollControllerState extends State<ScrollControllerPage> {
  ScrollController _controller = new ScrollController();
  //是否显示“返回顶部”按钮
  bool showToTopBtn = false;

  @override
  void initState(){
    //监听滚动事件，打印滚动位置
    _controller.addListener((){
      //打印滚动位置
      // print(_controller.offset);
      if(_controller.offset < 1000 && showToTopBtn){
        setState(() {
          showToTopBtn = false;
        });
      }else if(_controller.offset >= 1000 && showToTopBtn == false){
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose(){
    //为了避免内存泄露，需要调用 _controller.dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('滚动监听'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemExtent: 50.0,
          controller: _controller,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('$index'),
            );
          },
        )
      ),
      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          //返回到顶部时执行动画
          _controller.animateTo(.0,
            duration: Duration(milliseconds: 200),
            curve: Curves.ease
          );
        },
      ),
    );
  }
}
