import "package:flutter/material.dart";

void main() {
  runApp(new TextTestWidget());
}

/**
 * 练习 Text 组件的使用
 * Text 组件的使用相对简单
 * 注意的是 textDirection 属性必须赋值, 否则将会提示程序不知道文字的展示方向性
 */
class TextTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "test",
        // 这是必须键入的属性, 否则将会告诉你无法知道文字的方向性
        textDirection: TextDirection.ltr,
        // 这里可以通过 TextStyle 的属性来描述文字的样式
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.orange,
          decoration: TextDecoration.underline
        ),
      )
    );
  }
}