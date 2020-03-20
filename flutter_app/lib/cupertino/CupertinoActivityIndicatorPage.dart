import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() =>runApp(CupertinoActivityIndicatorPage());

class CupertinoActivityIndicatorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      home: new Scaffold(

        appBar: AppBar(
          title: Text('CupertinoActivityIndicator示例'),

        ),

        body: new Center(

          child: CupertinoActivityIndicator(
            radius: 30.0,

          ),


        ),

      ),


    );
  }


}