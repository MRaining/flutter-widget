import 'package:flutter/material.dart';
import 'package:flutterdemo/page/row.dart';
import 'package:flutterdemo/page/column.dart';
import 'package:flutterdemo/page/flex.dart';
import 'package:flutterdemo/page/wrap.dart';
import 'package:flutterdemo/page/flow.dart';
import 'package:flutterdemo/page/container.dart';
import 'package:flutterdemo/page/padding.dart';
import 'package:flutterdemo/page/constrainedbox.dart';
import 'package:flutterdemo/page/decoratedbox.dart';
import 'package:flutterdemo/page/transform.dart';
import 'package:flutterdemo/page/stack.dart';
import 'package:flutterdemo/page/text.dart';
import 'package:flutterdemo/page/button.dart';
import 'package:flutterdemo/page/list.dart';
import 'package:flutterdemo/page/grid.dart';
import 'package:flutterdemo/page/input.dart';
import 'package:flutterdemo/page/image.dart';
import 'package:flutterdemo/page/icon.dart';
import 'package:flutterdemo/page/chip.dart';
import 'package:flutterdemo/page/tabbar.dart';
import 'package:flutterdemo/page/checkbox.dart';
import 'package:flutterdemo/page/scaffold.dart';
import 'package:flutterdemo/page/singlechildscrollviewpage.dart';
import 'package:flutterdemo/page/customscrollview.dart';
import 'package:flutterdemo/page/scrollcontroller.dart';
import 'package:flutterdemo/page/willpopscope.dart';
import 'package:flutterdemo/page/themedata.dart';
import 'package:flutterdemo/page/tap.dart';
import 'package:flutterdemo/page/drag.dart';
import 'package:flutterdemo/page/verticaldrag.dart';
import 'package:flutterdemo/page/scale.dart';
import 'package:flutterdemo/page/gesturerecognizer.dart';
import 'package:flutterdemo/page/event/event.dart';
import 'package:flutterdemo/page/notification.dart';
import 'package:flutterdemo/page/animation.dart';
import 'package:flutterdemo/page/pageroute/pageroute.dart';
import 'package:flutterdemo/page/hero/hero.dart';
import 'package:flutterdemo/page/gradientbutton/gradientbuttonpage.dart';
import 'package:flutterdemo/page/turnbox/turnboxpage.dart';
import 'package:flutterdemo/page/custompaint.dart';
import 'package:flutterdemo/page/gradientcircular/gradientcircular.dart';
import 'package:flutterdemo/page/pathprovider.dart';
import 'package:flutterdemo/page/httpclient.dart';
import 'package:flutterdemo/page/websocket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('布局组件',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                  height: 2.0,
                ),
              listItem('Container', '布局组件container', Icons.aspect_ratio, context, ContainerPage()),
              listItem('Row', '布局组件row', Icons.view_week, context, RowPage()),
              listItem('Column', '布局组件column', Icons.view_headline, context, ColumnPage()),
              listItem('Flex', '布局组件flex', Icons.dashboard, context, FlexPage()),
              listItem('Wrap', '布局组件wrap', Icons.wrap_text, context, WrapPage()),
              listItem('Flow', '布局组件flow', Icons.low_priority, context, FlowPage()),
              listItem('Padding', '布局组件padding', Icons.settings_overscan, context, PaddingPage()),
              listItem('ConstrainedBox', '&SizedBox', Icons.photo_size_select_small, context, ConstrainedBoxPage()),
              listItem('Transform', '变换Transform', Icons.leak_add, context, TransformPage()),
              listItem('DecoratedBox', '装饰容器DecoratedBox', Icons.grain, context, DecoratedBoxPage()),
              listItem('Stack', '布局组件stack,绝对定位', Icons.layers, context, StackPage()),
              listItem('ListView', '样式组件list', Icons.list, context, ListPage()),
              listItem('GridView', '样式组件grid', Icons.apps, context, GridPage()),
              listItem('SingleChildScrollView', '滚动组件', Icons.text_rotate_vertical, context, SingleChildScrollViewPage()),
              listItem('TabBar', '样式组件TabBar', Icons.school, context, TabBarPage()),
              listItem('Button', '按钮', Icons.school, context, ButtonPage()),
              Divider(
                  height: 2.0,
                ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('显示组件',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                  height: 2.0,
                ),
              listItem('Image', '样式组件image', Icons.image, context, ImagePage()),
              listItem('Icon', '样式组件icon', Icons.insert_emoticon, context, IconPage()),
              listItem('Chip', '样式组件chip', Icons.label, context, ChipPage()),
              listItem('Text', '样式组件text', Icons.text_fields, context, TextPage()),
              listItem('Input', '样式组件Input', Icons.edit, context, InputPage()),
              listItem('Checkbox', '复选框', Icons.check_box, context, CheckboxPage()),
              Divider(
                height: 2.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('进阶组件',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                height: 2.0,
              ),
              listItem('Scaffold', '脚手架', Icons.school, context, ScaffoldPage()),
              listItem('ScrollController', '滚动监听及控制', Icons.school, context, ScrollControllerPage()),
              listItem('CustomScrollView', '自定义滚动', Icons.school, context, CustomScrollViewPage()),
              listItem('WillPopScope', '导航返回拦截', Icons.school, context, WillPopScopePage()),
              listItem('ThemeData', '主题', Icons.school, context, ThemeDataPage()),
              listItem('事件总线', '全局事件总线', Icons.school, context, EventPage()),
              listItem('Notification', '通知', Icons.school, context, NotificationPage()),
              Divider(
                height: 2.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('手势',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                height: 2.0,
              ),
              listItem('GestureDetector', '点击、双击、长按', Icons.school, context, TapPage()),
              listItem('GestureDetector', '拖动、滑动', Icons.school, context, DragPage()),
              listItem('GestureDetector', '单一方向拖动', Icons.school, context, VerticalDragPage()),
              listItem('GestureDetector', '缩放', Icons.school, context, ScalePage()),
              listItem('GestureRecognizer', '手势识别', Icons.school, context, GestureRecognizerPage()),
              Divider(
                height: 2.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('动画',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                height: 2.0,
              ),
              listItem('Animation', '动画结构', Icons.school, context, AnimationPage()),
              listItem('MaterialPageRoute', '自定义路由切换动画', Icons.school, context, MaterialPageRoutePage()),
              listItem('Hero', 'Hero动画', Icons.school, context, HeroPage()),
              Divider(
                height: 2.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('自定义Widget',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                height: 2.0,
              ),
              listItem('渐变按钮', '', Icons.school, context, GradientButtonPage()),
              listItem('TurnBox', '实例', Icons.school, context, TurnBoxPage()),
              listItem('自绘UI', 'CustomPaint与Canvas', Icons.school, context, CustomPaintPage()),
              listItem('实例', '圆形渐变进度条（自绘）', Icons.school, context, GradientCircular()),
              Divider(
                height: 2.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Text('文件操作和网络请求',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600)),
              ),
              Divider(
                height: 2.0,
              ),
              listItem('文件操作', '', Icons.school, context, PathProvider()),
              listItem('Http请求', 'HttpClient', Icons.school, context, HttpClientPage()),
              listItem('WebSocket', '长连接', Icons.school, context, WebSocket()),
            ],
          ),
        )
      );
  }

  Widget listItem(String title, String description, IconData icon,
      BuildContext context, Widget scence) {
    _goDetail() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return scence;
          // return new ThirdPage(title:"请输入昵称");
        }),
      );
    }

    return GestureDetector(
      onTap: _goDetail,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Icon(icon),
                  SizedBox(width: 10),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 10),
                      Text(description,
                          style: TextStyle(color: Colors.grey, fontSize: 12))
                    ],
                  )),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward,color: Colors.grey)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
