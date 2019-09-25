import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
    

    );
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return new Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: Container(
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                //动态创建一个List<Widget> 
                children: str.split("")
                  .map((c)=> Text(c, textScaleFactor:2.0))
                  .toList()
              ),
            ),
          ),
        )
      )
    );
  }
}
