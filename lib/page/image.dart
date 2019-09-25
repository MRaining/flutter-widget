import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  //填充代码区域start
  Widget body(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //加载本地图片
          Image(
            image: AssetImage('images/timg.jpeg')
          ),
          //快捷加载本地图片
          Image.asset('images/timg.jpeg', width: 100, ),
          //加载网络图片
          Image(
            image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555421114512&di=62e0e374ab03e2b493b153bcaa0e39d4&imgtype=0&src=http%3A%2F%2Fs9.cdn.deahu.com%2Fshow%2Flfile%2F829204E6B937A4447D11ACB0937677C8.jpg'),
          ),
          //快捷加载网络图片
          Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555421114512&di=62e0e374ab03e2b493b153bcaa0e39d4&imgtype=0&src=http%3A%2F%2Fs9.cdn.deahu.com%2Fshow%2Flfile%2F829204E6B937A4447D11ACB0937677C8.jpg', width: 100,)
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
          title: Text('Image'),
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
                  'image,加载本地资源、加载外部资源、图片占位符',
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
