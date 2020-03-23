import 'package:flutter/material.dart';
import 'package:flutterapp/tab/ItemDate.dart';

class HomeDart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeDartState();
  }
}

class _HomeDartState extends State<HomeDart> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('短信')),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text('联系人')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('发现')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _widgetOptions = [HomePage(text: "首页"), TabPage(), FindPage()];
}

class HomePage extends StatelessWidget {
  final String text;

  HomePage({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Container(
          width: 300.0,
          height: 300.0,
          padding: EdgeInsets.all(60.0),
          decoration: BoxDecoration(
            // color: Colors.white,
            border: Border.all(
              color: Colors.lightBlue,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: new Container(
            width: 200.0,
            height: 200.0,
            decoration: new BoxDecoration(
              //color: Colors.orange,
              border: Border.all(
                width: 2.0,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: new Center(
              child: new Text(
                text,
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
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
            appBar: AppBar(
              title: Text('出行方式'),
              centerTitle: true,
              bottom: TabBar(
                  tabs: items.map((ItemDate item) {
                return Tab(
                  text: item.title,
                  icon: Icon(item.icon),
                );
              }).toList()),
            ),
            body: TabBarView(
                children: items.map((ItemDate item) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: new SelectedView(
                  itemDate: item,
                ),
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

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 518.0,
              decoration: BoxDecoration(color: Colors.blue),
              //层叠布局
              child: Stack(
                children: <Widget>[
                  Align(
                    //左上
                    child: Image.asset(
                      'images/icon_pkq.jpg',
                      width: 128.0,
                      height: 128.0,
                    ),
                    alignment: FractionalOffset(0.0, 0.0),
                  ),
                  Align(
                    //右上
                    child: Image.asset(
                      'images/icon_pkq.jpg',
                      width: 128.0,
                      height: 128.0,
                    ),
                    alignment: FractionalOffset(1.0, 0.0),
                  ),
                  //居中
                  Align(
                    child: Image.asset(
                      'images/icon_pkq.jpg',
                      width: 128.0,
                      height: 128.0,
                    ),
                    alignment: FractionalOffset.center,
                  ),
                  Align(
                    //左下
                    child: Image.asset(
                      'images/icon_pkq.jpg',
                      width: 128.0,
                      height: 128.0,
                    ),
                    alignment: FractionalOffset.bottomLeft,
                  ),
                  //右下
                  Align(
                    child: Image.asset(
                      'images/icon_pkq.jpg',
                      width: 128.0,
                      height: 128.0,
                    ),
                    alignment: FractionalOffset.bottomRight,
                  ),
                  Align(
                    alignment: FractionalOffset.centerLeft,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                      ),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        alignment: Alignment.topLeft,
                        child: Text('你好呀'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Divider(),
          ],
        ),

      ),
    );
  }
}
