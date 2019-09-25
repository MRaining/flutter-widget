import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(

    );
  }
  //填充代码区域end

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Grid'),
        ),
        body: Container(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //横轴3个子widget
              childAspectRatio: 1.0 //宽高比为1时，子widget
            ),
            children: <Widget>[
              Icon(Icons.ac_unit),
              Icon(Icons.airport_shuttle),
              Icon(Icons.all_inclusive),
              Icon(Icons.beach_access),
              Icon(Icons.cake),
              Icon(Icons.free_breakfast)
            ],
          )
        ));
  }
}
