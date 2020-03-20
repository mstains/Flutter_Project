import 'package:flutter/material.dart';

void main() => runApp(new DefaultTabControllerSample());

class DefaultTabControllerSample extends StatelessWidget {
  final List<Tab> _tabList = [
    Tab(
      text: '选项一',
    ),
    Tab(
      text: '选项二',
    ),
    Tab(
      text: 'Alla',
    ),
    Tab(
      text: '兔兔',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new DefaultTabController(
          length: _tabList.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar( tabs: _tabList),
            ),
            body: TabBarView(
                children: _tabList.map((Tab tab) {
              return Center(
                child: Text(tab.text),
              );
            }).toList()),
          )),
    );
  }
}
