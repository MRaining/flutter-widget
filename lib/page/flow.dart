import 'package:flutter/material.dart';

class FlowPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flow(
            delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
            children: <Widget>[
              new Container(width: 80.0, height:80.0, color: Colors.red,),
              new Container(width: 80.0, height:80.0, color: Colors.green,),
              new Container(width: 80.0, height:80.0, color: Colors.blue,),
              new Container(width: 80.0, height:80.0,  color: Colors.yellow,),
              new Container(width: 80.0, height:80.0, color: Colors.brown,),
              new Container(width: 80.0, height:80.0,  color: Colors.purple,),
            ],
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
          title: Text('Flow'),
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
                  '当行溢出时，该行没有任何剩余空间可在其Expanded和Flexible 子级之间共享。该行通过在溢出的边缘上绘制黄色和黑色条纹警告框来报告此情况。如果行外侧有空间，则溢出量以红色字体打印。合理利用expanded',
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

//实现TestFlowDelegate:
class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置  
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)  
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
         x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  getSize(BoxConstraints constraints){
    //指定Flow的大小  
    return Size(double.infinity,200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
