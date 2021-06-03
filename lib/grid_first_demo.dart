import 'dart:ffi';

import "package:flutter/material.dart";
import "data_list_data.dart";

void main() {
  runApp(DefaultApp());
}

class DefaultApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ContainerClass(),
      )
    );
  }
}

class ContainerClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GridFirstDemo();
  }
}

class GridFirstDemo extends State<ContainerClass> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: listData.length,
        itemBuilder: (_, index) {
          double leftPadding, rightPadding;

          if (index % 2 == 0) {
            leftPadding   = 20.0;
            rightPadding  = 5.0;
          } else {
            leftPadding   = 5.0;
            rightPadding  = 20.0;
          }

          return Container(
            child: Column(
              children: <Widget>[
                Image.network(listData[index]["image"]),
                /*SizedBox(height: 10),
                Text(
                    listData[index]["title"],
                    style: TextStyle(
                      fontSize: 14
                    ),
                )*/
                Padding(
                  padding: EdgeInsets.fromLTRB(leftPadding, 10, rightPadding, 10),
                  child: Text(
                    listData[index]["title"],
                    style: TextStyle(
                        fontSize: 14
                    ),
                  ),
                )
              ],
            )
          );
        }
    );
  }
}