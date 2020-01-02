import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: "文本",
  home: new ContainerDemo(),

));

class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("啦啦啦"),
      ),

      body: new Column(

        children: <Widget>[

          new Text(
              '红色+黑色删除线+25号',
          style: new TextStyle(
            decoration: TextDecoration.lineThrough,
            color: const Color(0xffff0000),
            decorationColor: const Color(0xff000000),
            fontSize: 25.0

          ),),
          new Text(
            "虚线上划线+倾斜",
            style: new TextStyle(

              decoration: TextDecoration.overline,
              //倾斜
              fontStyle: FontStyle.italic


            ),
          ),
          new Text(
            "24号+加粗",
            style: new TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 6.0,
              fontSize: 24.0

            ),
          )



        ],

      ),
      
    );
  }
  
}