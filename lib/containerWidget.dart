import 'package:flutter/material.dart';

void main() => runApp(ContainerWidget());

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            // child: new Text(
            //   'container text',
            //   style: TextStyle(
            //       color: Color.fromARGB(125, 0, 0, 0), fontSize: 40.0),
            // ),

            // Image组件
            child: new Image.network(
              'https://i0.hdslb.com/bfs/face/a71fd12c21905f402248883d0b09d8ac853e3088.jpg@72w_72h.webp',
              // fit 适应属性
              // fit: BoxFit.contain, // BoxFit.contain表示图片按照原有比例，不修改
              fit: BoxFit.fitWidth, // BoxFit.fitWidth fill fitHeight 等

              color: Colors.orangeAccent, // 填充颜色
              colorBlendMode: BlendMode.darken, // 混合颜色：使上面的color和这个配置混合起来

              repeat: ImageRepeat.repeatX,
            ),

            // Container样式属性
            alignment:
                Alignment.topLeft, // 容器对齐方式 topCenter topCenter bottomLeft 等
            width: 500.0,
            height: 300.0,
            // color: Colors.blueAccent, // 单一背景色，如果用decoration就不用color
            decoration: new BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.blue, Color(0xFF000000)] // 鼠标放到色值上可以调
                    ),
                border: Border.all(width: 3.0, color: Colors.red)),

            // padding: const EdgeInsets.all(10.0), // 各边一致的padding
            padding: const EdgeInsets.fromLTRB(
                10.0, 100.0, 0, 0), // .fromLTRB(left, top, right, bottom)
            margin: const EdgeInsets.all(10.0), // EdgeInsets和padding的一致
          ),
        ),
      ),
    );
  }
}
