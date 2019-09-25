import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  _ScaffoldPageState createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //导航栏
      appBar: AppBar(
        title: Text('Scaffold'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu
            ),
            onPressed: (){
              //打开抽屉菜单
              Scaffold.of(context).openDrawer();
            },
          )
        ],
      ),
      //抽屉
      drawer: new Drawer(),
      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('商务')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('学习')
          )
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.green,
        onTap: _onItemTapped,
      ),
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onAdd,
      ),
      body: Container(
        child: ListView(
          
        ),
      )
    );
  }
  //点击底部导航栏
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  //点击添加按钮
  void _onAdd(){
    print(123);
  }
}
//抽屉菜单
class MyDrawer extends StatelessWidget{
  const MyDrawer({
    Key key,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ClipOval(
                      child: Image.asset('images/timg.jpeg', width: 80,),
                    ),
                  ),
                  Text(
                    '吴彦祖',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  )
                ]
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add account'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}