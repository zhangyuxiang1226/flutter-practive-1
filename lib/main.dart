import 'package:flutter/material.dart';
import './home.dart';
import './officialSample.dart';
import './sign.dart';
import './circleSlider.dart';
import './textWidget.dart';
import './containerWidget.dart';
import './listViewWidget.dart';

void main() => runApp(MaterialApp(
      home: MyAppHome(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
        '/officialSample': (BuildContext context) => OfficialSample(),
        '/sign': (BuildContext context) => SignUpPage(),
        '/circular_slider': (BuildContext context) => CircleSlider(),
        '/text_widget': (BuildContext context) => TextWidget(),
        '/container_widget': (BuildContext context) => ContainerWidget(),
        '/listView_widget': (BuildContext context) => ListViewWidget(),
      },
    ));


