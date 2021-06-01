import "package:flutter/material.dart";

void main() {
  runApp(new ContainerTestWidget());
}

class ContainerTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //
      child: Container(
        child: Text(
          "Hello, world.",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.right,
        ),
        width: 300.0,
        height: 300,
        // 通过 decoration 属性来告诉 flutter 需要修改 Container 的样式
        decoration: BoxDecoration(
          color: Colors.blue,
          // border 可以设置边框, Border.all 表示四周边框
          border: Border.all(
            color: Colors.yellow,
            width: 2
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          )
        )
      )
    );
  }

}