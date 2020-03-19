import 'package:flutter/material.dart';

void main() => {
      runApp(new ListViewBuilder(
        item: new List<String>.generate(50, (i) => 'Item$i'),
      ))
    };

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key, key, @required this.item}) : super(key: key);

  final List<String> item;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '列表操作',
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('列表操作'),
        ),
        body: new ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: new Icon(Icons.phone),
                title: new Text('${item[index]}'),
                subtitle: Text('这是小标题$index'),
              );
            }),
      ),
    );
  }
}
