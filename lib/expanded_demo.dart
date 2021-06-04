import "package:flutter/material.dart";

void main() {
  runApp(DefaultApp());
}

class DefaultApp extends StatelessWidget {
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
    return ExpandedDemo();
  }
}

class ExpandedDemo extends State<ContainerClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: Image.network("https://t7.baidu.com/it/u=1819248061,230866778&fm=193&f=GIF", fit: BoxFit.cover)
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                height: 200,
                child: Image.network("https://pic3.iqiyipic.com/image/20210603/ca/47/v_159853533_m_601_480_270.jpg", fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 95,
                    child: Image.network("https://pic9.iqiyipic.com/image/20181025/a9/07/a_100000707_m_601_m5_480_270.jpg", fit: BoxFit.cover),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 95,
                    child: Image.network("https://pic3.iqiyipic.com/image/20201225/f2/c4/a_100146537_m_601_m19_480_270.jpg", fit: BoxFit.cover),
                  )
                ],
              )
            )
          ],
        )
      ],
    );
  }
}