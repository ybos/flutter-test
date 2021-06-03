import "package:flutter/material.dart";
import "data_list_data.dart";

void main() {
  runApp(ContainerListMapData());
}

class ContainerListMapData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultContainer(),
      )
    );
  }
}

class DefaultContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListMapData();
  }
}

/**
 * 这里需要注意, ListView 和 ListTile 都需要一个 Material Widget 的 ancestor
 * 所以需要在 MaterialApp 内调用 Scaffold
 */
class ListMapData extends State<DefaultContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              leading: Image.network(listData[index]["image"]),
              title: Text(listData[index]["title"]),
            );
          },
          itemCount: listData.length,
          separatorBuilder: (_, __) => Divider(),
      )
    );
  }
}