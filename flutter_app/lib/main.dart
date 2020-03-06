import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: EdgeInsets.only(top: 8.0),
            child: new Text(
              '$label',
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    ;

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "电话"),
          buildButtonColumn(Icons.near_me, "定位"),
          buildButtonColumn(Icons.share, "分享"),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: EdgeInsets.all(32.0),
      child: new Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
        softWrap: true,
      ),
    );

    Widget imageSection = new Container(
      child: new Image.asset(
        "images/coast.jpg",
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,
      ),
    );

    Widget rowSection = new Center(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(
              child: new Image.asset(
            "images/coast.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          )),
          new Expanded(
              flex: 2,
              child: new Image.asset(
                "images/coast.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )),
          new Expanded(
              child: new Image.asset(
            "images/coast.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          )),
        ],
      ),
    );

    Widget columnSection = new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Image.asset(
            "images/coast.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            "images/coast.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          new Image.asset(
            "images/coast.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );

    Widget ratings = new Container(
      margin: EdgeInsets.only(top: 10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
          new Text(
            '170 Reviews',
            style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20.0,
            ),
          )
        ],
      ),
    );

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Icon(Icons.kitchen, color: Colors.green[500]),
                  new Text('PREP:'),
                  new Text('25 min'),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(Icons.timer, color: Colors.green[500]),
                  new Text('COOK:'),
                  new Text('1 hr'),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(Icons.restaurant, color: Colors.green[500]),
                  new Text('FEEDS:'),
                  new Text('4-6'),
                ],
              ),
            ],
          ),
        ));

    var leftColumn = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.green[500]),
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
          new Text('text')
        ],
      ),
    );

    var containerDecoration = new Container(
      width: 400,
      height: 100,
      margin: EdgeInsets.all(16),
      decoration: new BoxDecoration(
        border: new Border.all(width: 1.0, color: Colors.red),
        borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[new Text('54334')],
      ),
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            imageSection,
            titleSection,
            buttonSection,
            textSection,
            rowSection,
            columnSection,
            leftColumn,
            containerDecoration,
          ],
        ),
      ),
    );
  }
}
