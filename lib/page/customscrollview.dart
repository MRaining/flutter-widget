import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
        //todo 编写自己的代码

        );
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold,为了让子级widget（如text）使用
    //material design默认的样式风格，我们使用material作为本路由的根
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar, 包含一个导航栏
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('CustomScrollView'),
              background: Image.asset(
                './images/timg.jpeg', fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0
              ),
              delegate: new SliverChildBuilderDelegate((BuildContext context, int index){
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: new Text('grid item $index'),
                );
              }, childCount: 20),
            ),
          ),
          //list
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate((BuildContext context, int index){
              return new Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: new Text('list item $index')
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}
