import 'package:flutter/material.dart';

void main() => runApp(LayoutWidgets());

class LayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义层叠布局
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.5),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
            'https://i2.hdslb.com/bfs/face/a71fd12c21905f402248883d0b09d8ac853e3088.jpg@72w_72h.webp',),
          radius: 100.0,
        ),
        // new CircleAvatar(
        //   backgroundImage: new NetworkImage(
        //       'https://i1.hdslb.com/bfs/face/045d48038b9c0f21ba8e7417b8bb1b477cdda93c.png@168w_168h.webp'),
        //   radius: 100.0,
        // ),
        new Container(
          padding: EdgeInsets.all(10.0),
          child: new Text('stack'),
          decoration: new BoxDecoration(
          ),
        ),
      ],
    );

    return MaterialApp(
      title: 'Layout Widgets demo',
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('Layout Widget'),
          ),
          body: Scaffold(
            appBar: new AppBar(
              title: new Text('布局'),
            ),
            body: new ListView(
              children: <Widget>[
                // 横向布局
                new Text(
                  '横向布局',
                  style: TextStyle(fontSize: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.redAccent,
                      child: new Text(
                        'Red Button',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    // 用Expanded包裹起到自适应作用
                    Expanded(
                      child: new RaisedButton(
                        color: Colors.orangeAccent,
                        child: new Text(
                          'Orange Button',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    new RaisedButton(
                      color: Colors.blueAccent,
                      child: new Text(
                        'Blue Button',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),

                // 纵向布局
                new Text(
                  '纵向布局',
                  style: TextStyle(fontSize: 20.0),
                ),
                Container(
                  height: 200.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.blue),
                  ),
                  child: new Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // 副轴对齐 - 指水平方向的左中右
                    mainAxisAlignment:
                        MainAxisAlignment.end, // 主轴对齐 - 指垂直方向的上中下
                    children: <Widget>[
                      Text('1'),
                      Expanded(
                        // 这里使用Expanded使中间的这个文字占满高度
                        child: Text('2'),
                      ),
                      Text('3'),
                    ],
                  ),
                ),

                // 层叠布局
                new Text(
                  '层叠布局',
                  style: TextStyle(fontSize: 20.0),
                ),
                Container(
                  child: stack,
                ),
              ],
            ),
          )),
    );
  }
}
