import 'package:flutter/material.dart';

void main () => runApp(TextWidget());
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
          child: Text(
            'This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.This is Jim, here in Ubtech.',
            textAlign: TextAlign.left, // 文本对齐 center left right start end
            maxLines: 2, // 最大显示行数
            overflow: TextOverflow.ellipsis, // 超出隐藏 (省略号) ellipsis fade clip
            style: TextStyle(
              fontSize: 24.0, // 字号，浮点数
              color: Color.fromARGB(255, 255, 125, 125), // 字色，Color.fromARGB
              decoration: TextDecoration.underline, // 下划线
              decorationStyle: TextDecorationStyle.dashed, // 下划线样式 double dotted solid..

            ),
          ),
        ),
      ),
    );
  }
}