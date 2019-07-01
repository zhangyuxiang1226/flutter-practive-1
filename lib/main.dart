import 'package:flutter/material.dart';
import './home.dart';
import './officialSample.dart';
import './sign.dart';

void main() => runApp(MaterialApp(
      home: MyAppHome(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
        '/officialSample': (BuildContext context) => OfficialSample(),
        '/sign': (BuildContext context) => SignUpPage(),
      },
    ));


