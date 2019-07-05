import 'package:flutter/material.dart';

void main() => runApp(MyNavigate());

class MyNavigate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航演示1',
      // 更换主题
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1st Page')),
      body: Center(
        child: RaisedButton(
          child: Text('查看'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
