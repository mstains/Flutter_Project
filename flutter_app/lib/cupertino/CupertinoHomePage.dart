import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: CupertinoHomePage(),

));

class CupertinoHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CupertinoHomePageState();
}

class CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text('主页')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble),
              title: Text('聊天室')),
        ],
      ),
      tabBuilder: (context, index) => CupertinoTabView(
        builder: (context) {
          switch (index) {
            case 0:
              return HomePage();
              break;
            case 1:
              return ChatPage();

            default:
              return HomePage();
              break;
          }
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('你好呀'),
        trailing: Icon(CupertinoIcons.add),
        leading: Icon(CupertinoIcons.back),
      ),
      child: Center(
        child: Text('GO',style: Theme.of(context).textTheme.button),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('张某',),
        leading: Icon(
          CupertinoIcons.back,
          color: CupertinoColors.white,
        ),
        trailing: Icon(CupertinoIcons.add_circled_solid),
      ),
      child: new Center(
        child: Text('如果当时',style: Theme.of(context).textTheme.button),
      ),
    );
  }
}
