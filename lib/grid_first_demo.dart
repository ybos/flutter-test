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
          crossAxisCount: 2,
          crossAxisSpacing: 10
        ),
        itemCount: listData.length,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: <Widget>[
                Image.network(listData[index]["image"]),
                SizedBox(height: 10),
                Text(
                    listData[index]["title"],
                    style: TextStyle(
                      fontSize: 14
                    ),
                )
              ],
            )
          );
        }
    );
  }
}