import 'package:flutter/material.dart';

// 对runApp传参
void main() => runApp(ListViewWidget(
    // 生成1000条数据
    // items: new List<String>.generate(1000, (i) => "Item $i")
    items: ["item 1", "item 2"]
    )
  );

class ListViewWidget extends StatelessWidget {
  final List<String> items;
  // 构造函数  super:调用父类
  ListViewWidget({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'listView Demo',
        home: Scaffold(
          appBar: new AppBar(
            title: new Text('ListView Widget'),
          ),
          // 纵向列表
          //body: SimpleList(),

          // 横向列表
          // body: Center(
          //   child: Container(
          //     height: 200.0,
          //     child: HorizontalList(),
          //   ),
          // ),

          // 动态长列表
          body: new ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              print(items);
              // return new ListTile(title: new Text('${items[index]}'));
            },
          ),
        ));
  }
}

// 简单纵向列表
class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return ListView(
      children: <Widget>[
        new ListTile(
            leading: new Icon(Icons.add_alarm), title: new Text('list tile')),
        new ListTile(
            leading: new Icon(Icons.add_box), title: new Text('list tile')),
        new Image.network(
            'https://i0.hdslb.com/bfs/archive/3329c9f0abfb925ae30441f24d924ad3c19775df.png')
      ],
    );
  }
}

// 横向列表
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return ListView(
      scrollDirection:
          Axis.horizontal, // 列表滚动防线；Axis.horizontal 横向  Axis.vertical 纵向
      children: <Widget>[
        new Container(width: 180.0, color: Colors.blueAccent),
        new Container(width: 180.0, color: Colors.amber),
        new Container(width: 180.0, color: Colors.yellowAccent),
      ],
    );
  }
}
