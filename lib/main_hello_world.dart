import 'package:flutter/material.dart';

void main() {
  runApp(new HelloWorldWidget());
}

/**
 * 这里继承了 StatelessWidget 组件, 这是一个无状态的组件
 * 通过重写 build 返回一个组件
 * 这里将代码剥离了出来, 方便后续的重用和修改, 也增强了可读性
 */
class HelloWorldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        // 注意这里的 Text 内部的 textDirection 和 style 是命名参数
        // 命名为可选参数, 调用的时候不需要注意参数的具体位置, 但是使用的时候必须指定参数名称
        // 命名参数由 {} 包装, 可以通过 Text 的类描述来查看其明明参数有哪些.
        child: Text(
          "Hello, world!",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 12.0,
              // Colors 内部设置了常用的颜色值
              // Color 提供了更基础的方法
              color: Color.fromRGBO(255, 66, 00, 0.7)
          ),
        )
    );
  }
}