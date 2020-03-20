import 'package:flutter/material.dart';

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

  final _widgetOptions = [Text('首页信息'), Text('你好呀'), Text('发现信息')];
}

