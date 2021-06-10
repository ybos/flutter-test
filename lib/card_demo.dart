import "package:flutter/material.dart";

void main() {
  runApp(DefaultContainer());
}

class DefaultContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card 卡片组件"),
          leading: Icon(Icons.card_giftcard)
        ),
        body: CardDemo()
      )
    );
  }
}

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          // 外边距
          margin: EdgeInsets.all(10),
          // 阴影颜色
          shadowColor: Colors.grey[80],
          // 阴影高度
          elevation: 5,
          // 内容, 因为是多个元素, 所以选用带有 children 属性的 Column
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 50
                ),
                title: Text(
                  "张老板",
                  style: TextStyle(
                    fontSize: 20
                  )
                ),
                subtitle: Text(
                  "董事长助理",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  )
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "联系电话: 0512-12345678"
                )
              ),
              ListTile(
                title: Text(
                  "联系地址:国际科技园 88 幢 888 室"
                ),
                subtitle: Padding(
                  padding: EdgeInsets.fromLTRB(68, 0, 0, 0),
                  child: Text(
                    "江苏省苏州市工业园区",
                  )
                ),
              )
            ]
          ),
        )
      ],
    );
  }
}