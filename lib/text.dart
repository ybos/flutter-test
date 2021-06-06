import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("Testing Text"),
          leading: Icon(Icons.home),
          centerTitle: true,
        ),
        body: TextTestWidget()
    ))
  );
}

/**
 * 练习 Text 组件的使用
 * Text 组件的使用相对简单
 * 注意的是 textDirection 属性必须赋值, 否则将会提示程序不知道文字的展示方向性
 */
class TextTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "style:TextStyle",
          // 这是必须键入的属性, 否则将会告诉你无法知道文字的方向性
          textDirection: TextDirection.ltr,
          // 这里可以通过 TextStyle 的属性来描述文字的样式
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.orange,
              decoration: TextDecoration.underline
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          "烤冷面，是黑龙江省鸡西市密山市特色小吃之一，烤冷面起初有多种做法，包括油炸、高温铁板碾压等，后改良为铁板成块煎烤。21世纪初烤冷面已经火遍全国的大江南北，是东北极具特色的美食。",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.underline
          ),
          // 这里应该会显示 3 行, 指定 2 行的话, 多余的行数会被隐藏
          maxLines: 2,
        ),
        SizedBox(height: 10),
        Text(
          "烤冷面，是黑龙江省鸡西市密山市特色小吃之一，烤冷面起初有多种做法，包括油炸、高温铁板碾压等，后改良为铁板成块煎烤。21世纪初烤冷面已经火遍全国的大江南北，是东北极具特色的美食。",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.blueAccent
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 10),
        RichText(
          // 第一层的 text 类似于主信息, 内部定义的 color 会应用到全局
            text: TextSpan(
              text: "速冻水饺",
              style: TextStyle(
                color: Colors.red
              ),
              // children 内的部分属性会根据上层属性改变
              children: <InlineSpan>[
                TextSpan(
                  text: "是将包好的饺子经过",
                  style: TextStyle(
                    color: Colors.black
                  )
                ),
                TextSpan(
                  text: "速冻",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline
                  )
                ),
                TextSpan(
                  text: "以达到冷藏，可以随时食用的一种食物。",
                  style: TextStyle(
                    color: Colors.black
                  )
                )
              ]
            ),
        )
      ]
    );
  }
}