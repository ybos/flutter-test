import "package:flutter/material.dart";

void main() {
  runApp(DefaultContainer());
}

class DefaultContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ContainerClass()
      )
    );
  }
}

class ContainerClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StackDemo();
  }
}

class StackDemo extends State<ContainerClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        // 这边定义的是内部子组件的方向, 而不是文本的方向
        textDirection: TextDirection.rtl,
        // 定义未定义的子组件的对齐方式
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage("https://tva4.sinaimg.cn/crop.0.95.697.697.180/655d22f6gw1egdpg690n1j20jg0ritas.jpg?KID=imgbed,tva&Expires=1623170124&ssig=dUDmOjgEA0"),
            radius: 100
          ),
          Positioned(
            child: Container(
              child: Text(
                "热销",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w800
                )
              ),
              color: Colors.blueAccent,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            ),
            top: 10,
            right: 0
          ),
          // 这里就是未定义的子组件, 会应用 Stack 设定的默认对齐和排序方式

          Text(
              "作者本人",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 11,
                  fontWeight: FontWeight.w800
              )
          )
        ],
      )
    );
  }
}