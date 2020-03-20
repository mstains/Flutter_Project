import 'package:flutter/material.dart';

void main() => runApp(FlatButtonPage());

class FlatButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('FlatButton示例'),
        ),
        body: new Center(
          child: FlatButton(
              onPressed: () {
                print('啦啦啦');
              },
              child: Text(
                'FlatButton',
                style: TextStyle(fontSize: 24.0, color: Colors.orange),
              ),
          ),
        ),
      ),
    );
  }
}
