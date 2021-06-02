import "package:flutter/material.dart";

void main() {
  runApp(ContainerListHorizontal());
}

class ContainerListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Horizontal Testing",
      home: DefaultListHorizontal(),
    );
  }
}

class DefaultListHorizontal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListHorizontalDemo();
  }
}

class ListHorizontalDemo extends State<DefaultListHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.grey,
            margin: EdgeInsets.all(10),
          ),
          Container(
            width: 180,
            color: Colors.cyan,
            margin: EdgeInsets.all(10),
          ),
          Container(
            width: 180,
            color: Colors.orange,
            margin: EdgeInsets.all(10),
          ),
          Container(
            width: 180,
            color: Colors.green,
            margin: EdgeInsets.all(10),
          ),
          Container(
            width: 180,
            color: Colors.deepPurpleAccent,
            margin: EdgeInsets.all(10),
          )
        ],
      )
    );
  }

}