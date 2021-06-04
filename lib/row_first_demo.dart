import "package:flutter/material.dart";
import "widget_icon_container.dart";

void main() {
  runApp(DefaultApp());
}

class DefaultApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ContainerClass(),
      ),
    );
  }
}

class ContainerClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RowFirstDemo();
  }
}

class RowFirstDemo extends State<ContainerClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        color: Colors.black12,
        child: Row(
          // mainAxisAligment 代表的是主轴, row 的主轴就是横轴
          // spaceEvenly: 等距分配边距与间距
          // center: 居中显示
          // end: 居底显示
          // spaceAround: 元素间距:元素距边框距离 = 2:1
          // spaceBetween: 左右没边距, 中间等距
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // cross 就是纵轴
          crossAxisAlignment: CrossAxisAlignment.center,
          // 最重要的就是 children 内的元素
          children: <Widget>[
            WidgetIconContainer(Icons.home, color: Colors.deepPurpleAccent),
            WidgetIconContainer(Icons.search, color: Colors.grey),
            WidgetIconContainer(Icons.ac_unit, color: Colors.orange),
          ],
        )
    );
  }
}