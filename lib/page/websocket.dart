import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class WebSocket extends StatefulWidget {
  @override
  _WebSocketState createState() => _WebSocketState();
}

class _WebSocketState extends State<WebSocket> {
  TextEditingController _controller = new TextEditingController();
  IOWebSocketChannel channel;
  String _text = "";

  @override
  void initState(){
    //创建websocket连接
    channel = new IOWebSocketChannel.connect('ws://echo.websocket.org');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('WebSocket'),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Form(
              child: new TextFormField(
                controller: _controller,
                decoration: new InputDecoration(labelText: '发送一个消息'),
              ),
            ),
            new StreamBuilder(
              stream: channel.stream,
              builder: (context, snapshot){
                //网络不通会走到这
                if (snapshot.hasError) {
                  _text = "网络不通...";
                } else if (snapshot.hasData) {
                  _text = "echo: "+snapshot.data;
                }
                return new Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: new Text(_text),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: '发送消息',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _sendMessage(){
    if (_controller.text.isNotEmpty) {
      channel.sink.add(_controller.text);
    }
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
