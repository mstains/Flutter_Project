import 'package:flutter/material.dart';


void main() =>runApp(DrawerWidget());

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(

        appBar: AppBar(

          title: Text('左侧栏'),

          centerTitle: true,

        ),

        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('mstains'),
                accountEmail: Text('344330607@163.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage('images/coast.jpg'),
                ),
                otherAccountsPictures: <Widget>[
                  new Container(

                    child: Image.asset('images/coast.jpg'),

                  )
                ],
                onDetailsPressed: (){

                  print('who?');

                },
              ),
              ListTile(
                leading: new Container(child: new Icon(Icons.color_lens),),
                title: Text('个性装扮'),
                subtitle: Text('属于你的个性装扮'),
              ),
              ListTile(
                leading: Container(child: Icon(Icons.photo),),
                title: Text('相册'),
                subtitle: Text('我的相册'),
              ),
              ListTile(
                leading: Container(child: Icon(Icons.wifi),),
                title: Text('免流量特权'),
                subtitle: Text('百款应用免流量，王者吃鸡嗨起来'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
