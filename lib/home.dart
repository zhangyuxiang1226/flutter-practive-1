import 'package:flutter/material.dart';

class MyAppHome extends StatelessWidget {
  @override
  final _biggerFont = const TextStyle(fontSize: 18.0);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.pushNamed(context, '/officialSample');
              }),
          IconButton(
              icon: Icon(Icons.assignment_ind),
              onPressed: () {
                Navigator.pushNamed(context, '/sign');
              }),
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            ListTile(
              title: Text(
                '官方例子',
                style: _biggerFont,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/officialSample');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            ListTile(
              title: Text(
                'sign',
                style: _biggerFont,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/sign');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
