import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('hello'),
        ),
        body: new Center(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: 150.0,
                  height: 44.0,
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.orange, width: 2.0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0)),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: new RaisedButton(
                      child: new Text('跳转浏览器'),
                      onPressed: () {
                        var url = 'https://www.baidu.com';

                        launch(url);
                      }),
                ),
                new Container(
                  width: 150.0,
                  height: 44.0,
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.orange, width: 2.0),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0)),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: new RaisedButton(
                      color: Colors.blue,
                      child: new Text("网络请求"),
                      onPressed: () {
                        var url = 'http://httpbin.org/';

                        http.get(url).then((response) {
                          print('状态${response.statusCode}');

                          print('正文${response.body}');
                        });
                      }
                      ),
                ),
                new Icon(
                  Icons.add_location,
                  color: Colors.orange,
                  size: 26.0,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_location,
                    color: Colors.red,
                    size: 44.0,
                  ),
                  onPressed: () {
                    print('按下操作');
                  },
                  tooltip: '按下操作',
                ),
//                new ListView(
//                  //横向滑动
//                  scrollDirection: Axis.horizontal,
//                  //数据反转
//                  reverse: true,
//
//                  children: <Widget>[
//
//
//                    ListTile(
//
//                      title: Text('Alarm'),
//                      leading: Icon(Icons.alarm),
//                      subtitle: Text('副标题'),
//
//                    ),
//
//                  ],
//
//                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
