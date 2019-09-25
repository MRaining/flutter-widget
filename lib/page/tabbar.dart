import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget{
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with SingleTickerProviderStateMixin{
  //定义一个controller
  TabController _tabController;
  List tabs = ['新闻', '历史', '图片'];

  @override
  void initState(){
    super.initState();
    //创建controller
    _tabController = TabController(
      length: tabs.length,
      vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        //tab菜单
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map( (e) => Tab(text: e) ).toList()
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e){
          return Container(
            alignment: Alignment.center,
            child: Text( e, textScaleFactor: 5 ),
          );
        }).toList()
      ),
      //底部导航栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        // 底部导航栏打一个圆形的洞
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home),onPressed: (){},),
            //空出中间位置
            SizedBox(),
            IconButton(icon: Icon(Icons.business),onPressed: (){},)
          ],
          //均分底部导航栏横向空间
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      //设置FloatingActionButton的位置在中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
