/*
*
* 组件自己管理自己的状态
* */

import 'package:flutter/material.dart';


void main() =>(runApp(MyApp()));

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      
      home: new Scaffold(
        
        appBar: new AppBar(
          
          title: new Text("FlutterDemo"),

        ),

        body: new Center(

          child: new TapboxA(),
          
          //child: new Text("data"),

        ),
        
        
      ),
      
      
    );
    
  }

}

class TapboxA extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTop() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: _handleTop,
      child: new Container(
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: new Center(
          child: new Text(
            _active ? "Active" : "Inactive",
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
