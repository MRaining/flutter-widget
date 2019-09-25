import 'package:flutter/material.dart';
import 'package:flutterdemo/page/pageroute/page.dart';

class MaterialPageRoutePage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
        //todo 编写自己的代码

        );
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('自定义路由切换动画'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('下一页'),
            onPressed: (){
              Navigator.push(context, PageRouteBuilder(
                //动画时间为500毫秒
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation){
                  return new FadeTransition(
                    //使用渐隐渐入过渡, 
                    opacity: animation,
                    child: PageB(),
                  );
                }
              ));
            },
          ),
        )
      );
  }
}
