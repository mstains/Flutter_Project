/*
* 
* 学习有状态的组件
* */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      home: new Scaffold(
        
        appBar: new AppBar(
          
          title: new Text("啦啦啦"),
          
        ),

        body: new FavoriteWidget(),

      ),

    );
  }

}



class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _FavoriteWidgetState();
  }
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;

  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: new IconButton(
            icon: _isFavorited ? new Icon(Icons.star) : new Icon(Icons.star_border),
            onPressed: _toggleFavorite,
            color: Colors.red[500],
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child:   new Text("$_favoriteCount"),
            
            
          ),
        ),
      ],
    );
  }
}
