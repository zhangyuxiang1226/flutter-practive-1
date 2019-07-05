import 'package:flutter/material.dart';

/**
 * 本demo主要是传参和路由操作
 */
void main() {
  runApp(NavigateWithDataBack());
}

class NavigateWithDataBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '页面跳转并返回数据 demo',
      // 自定义组件传参
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找A要电话'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToA(context);
      },
      child: Text('去找A'),
    );
  }
}

_navigateToA(BuildContext context) async {
  // 异步等待回来的内容
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => PageA()));

  // 下方弹出信息
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('${result}'),
  ));
}

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('I am A')),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('返回信息A'),
              onPressed: () {
                Navigator.pop(context, 'This is A');
              },
            ),
            RaisedButton(
              child: Text('返回信息B'),
              onPressed: () {
                Navigator.pop(context, 'This is B');
              },
            )
          ],
        ),
      ),
    );
  }
}
