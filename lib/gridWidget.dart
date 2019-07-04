import 'package:flutter/material.dart';

void main() => runApp(GridWidget());

class GridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('GridView Widget'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 列数
            mainAxisSpacing: 10.0, // 行间距
            crossAxisSpacing: 10.0, // 列间距
            childAspectRatio: 0.7, // 宽度高度比 比如 正方形就是 1.0, 横着的长方形就是2.0
          ),
          children: <Widget>[
            new Image.network(
              'https://i0.hdslb.com/bfs/bangumi/ad5d016d809ce163645b74b078c7c16e2639bb46.jpg@520w_536h.webp',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://i0.hdslb.com/bfs/bangumi/ad5d016d809ce163645b74b078c7c16e2639bb46.jpg@520w_536h.webp',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://i0.hdslb.com/bfs/bangumi/ad5d016d809ce163645b74b078c7c16e2639bb46.jpg@520w_536h.webp',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://i0.hdslb.com/bfs/bangumi/ad5d016d809ce163645b74b078c7c16e2639bb46.jpg@520w_536h.webp',
              fit: BoxFit.cover,
            ),
          ],
        ),
        // body: GridView.count(
        //   padding: const EdgeInsets.all(10.0),
        //   crossAxisSpacing: 10.0, // 网格间距
        //   crossAxisCount: 3, // 列数
        //   children: <Widget>[
        //     const Text('This is Jim'),
        //     const Text('This is Jim'),
        //     const Text('This is Jim'),
        //     const Text('This is Jim'),
        //     const Text('This is Jim'),
        //     const Text('This is Jim'),
        //   ],
        // ),
      ),
    );
  }
}
