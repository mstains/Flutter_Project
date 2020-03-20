import 'package:flutter/material.dart';
import 'package:flutterapp/Tab/ItemDate.dart';

void main() => runApp(new TabBarSample());

class TabBarSample extends StatelessWidget {
  List<ItemDate> items = const <ItemDate>[
    const ItemDate(title: '自驾', icon: Icons.directions_car),
    const ItemDate(title: '自行车', icon: Icons.directions_bike),
    const ItemDate(title: '轮船', icon: Icons.directions_boat),
    const ItemDate(title: '公交车', icon: Icons.directions_bus),
    const ItemDate(title: '火车', icon: Icons.directions_railway),
    const ItemDate(title: '步行', icon: Icons.directions_walk),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: DefaultTabController(
          length: items.length,
          child: new Scaffold(
            appBar: new AppBar(
              bottom: TabBar(
                tabs: items.map((ItemDate item) {
                  return new Tab(
                    text: item.title,
                    icon: Icon(item.icon),
                  );
                }).toList(),
                isScrollable: true,
              ), 
            ),
            body: TabBarView(
                children: items.map((ItemDate item) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: new SelectedView(itemDate: item),
              );
            }).toList()),
          )),
    );
  }
}

class SelectedView extends StatelessWidget {
  final ItemDate itemDate;

  SelectedView({Key key, @required this.itemDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return new Card(
      color: Colors.white,
      child: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Icon(
              itemDate.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            new Text(
              itemDate.title,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
