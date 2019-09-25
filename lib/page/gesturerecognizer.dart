import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class GestureRecognizerPage extends StatefulWidget{
  @override
  _GestureRecognizerPageRoute createState() => _GestureRecognizerPageRoute();
}

class _GestureRecognizerPageRoute extends State<GestureRecognizerPage> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  //变色开关
  bool _toggle = false;

  @override
  void dispose(){
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('GestureRecognizer'),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(children:[
            TextSpan(text: '你好世界'),
            TextSpan(
              text: '你好世界',
              style: TextStyle(
                fontSize: 30.0,
                color: _toggle ? Colors.blue : Colors.red
              ),
              recognizer: _tapGestureRecognizer..onTap = (){
                setState(() {
                  _toggle = !_toggle;
                });
              }
            ),
            TextSpan(text: '你好世界')
          ])
        )
      )
    );
  }
}
