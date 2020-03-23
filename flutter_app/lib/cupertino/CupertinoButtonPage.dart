import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CupertinoButtonPage());

class CupertinoButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoButton示例'),
          centerTitle: true,
        ),
        body: Center(
          child: CupertinoButton(child: Text('点击'), onPressed: () {
          },color: Colors.blue,),
        ),
      ),
    );
  }
}
