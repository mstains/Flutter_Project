import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CupertinoAlertDialogPage());

class CupertinoAlertDialogPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      home: new Scaffold(

        appBar: AppBar(

          title: Text('CupertinoAlertDialog示例'),
          centerTitle: true,
        ),

        body: new Center(

          child: CupertinoAlertDialog(
            title: Text('提示'),

            content: SingleChildScrollView(

              child: ListBody(

                children: <Widget>[
                  Text('1'),
                  Text('2'),

                ],

              ),

            ),

            actions: <Widget>[
              CupertinoDialogAction(child: Text('确定'),onPressed: (){},),
              CupertinoDialogAction(child: Text('取消'),onPressed: (){},),

            ],


          ),


        ),

      ),

    );
  }



}