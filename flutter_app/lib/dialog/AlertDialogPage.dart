import 'package:flutter/material.dart';

void main() =>runApp(AlertDialogPage());


class AlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('AlertDialog示例'),
          centerTitle: true,
        ),
        body: new Center(
          child: AlertDialog(
            title: Text('提示'),
            titlePadding: const EdgeInsets.all(10.0),
            contentPadding: const EdgeInsets.all(10.0),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('是否删除当前数据？'),
                  Text('删除过程无法撤回！'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(onPressed: () {

              }, child: Text('取消')),
              FlatButton(onPressed: () {}, child: Text('确定'))
            ],
          ),
        ),
      ),
    );
  }
}
