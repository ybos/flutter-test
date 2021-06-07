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
    return WrapFirstDemo();
  }
}

class WrapFirstDemo extends State<ContainerClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          spacing: 30,
          runSpacing: 10,
          alignment: WrapAlignment.spaceAround,
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("蜀")
              ),
              label: Text("诸葛亮"),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("蜀")
              ),
              label: Text("诸葛亮"),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("蜀")
              ),
              label: Text("诸葛亮"),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("蜀")
              ),
              label: Text("诸葛亮"),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("蜀")
              ),
              label: Text("诸葛亮"),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("蜀")
              ),
              label: Text("黄忠"),
            )
          ],
        )
      ]
    );
  }
}