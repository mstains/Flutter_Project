import 'package:flutter/material.dart';



void main() => runApp(new FlutterGridView());

class FlutterGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'GridView',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: new Container(
          child: new GridView.count(
            //一行三条数据
            crossAxisCount: 3,

            crossAxisSpacing: 30.0,
            //mainAxisSpacing: 30.0,
            primary: false,

            children: <Widget>[

              const Text('1'),
              const Text('2'),
              const Text('3'),

              const Text('4'),
              const Text('5'),
              const Text('6'),

              const Text('7'),
              const Text('8'),
              const Text('9'),


            ],

          ),
        ),
      ),
    );
  }
}
