import "package:flutter/material.dart";

void main() {
  runApp(ContainerListFirstDemoWidget());
}

class ContainerListFirstDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultListFirstDemoWidget()
      )
    );
  }
}

/**
 * ListView 必须搭配 Scrollable 类来使用，否则编译会报错：
 * The specific widget that could not find a Directionality ancestor was: Scrollable
 *
 * Scrollable 类继承自 StatefulWidget 组件，所以我们这里继承 StatefulWidget 组件并创建默认状态
 */
class DefaultListFirstDemoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListFirstDemoWidget();
  }
}

/**
 * ListView 组件的基础用法
 */
class ListFirstDemoWidget extends State<DefaultListFirstDemoWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          title: Text(
              "北大＂扫地僧＂火了 同学:他喜欢去别人宿舍看水电表",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              )
          ),
          subtitle: Text(
              "“再给他五六年的时间，我相信他会在学术上有所作为，或许会在数学领域做出惊艳世界的研究成果。”",
              textDirection: TextDirection.ltr
          ),
        ),
        ListTile(
          title: Text(
              "被刺的南京＂胖哥＂家属:他还在昏迷中 感谢网友关心",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              )
          ),
          subtitle: Text(
              "5月29日晚上9点多，南京市中心新街口区域发生一起男子驾车撞人并持刀捅人的恶性案件。",
              textDirection: TextDirection.ltr
          ),
        ),
        ListTile(
          title: Text(
              "售17.68万起 领克02 Hatchback正式上市",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              )
          ),
          subtitle: Text(
              "领克02 Hatchback正式上市，新车售价17.68万，同时还有增加驾控套件的版本，价格18.18万，领克02 Hatchback将与领克03+构成运动双子星，满足用户的需求。",
              textDirection: TextDirection.ltr
          ),
        )
      ],
    );
  }
}