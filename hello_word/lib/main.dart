import 'package:flutter/material.dart';

void main() => runApp(MyTheme());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter"),

        ),
        body: Center(
          child: Text("Hello Word"),
        ),
      ),
    );
  }
}


class MyTheme extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final appName = "自定义主题";

    return new MaterialApp(

      title: appName,
      theme: new ThemeData(

        brightness: Brightness.light,

        primaryColor: Colors.lightGreen[600],

        accentColor: Colors.orange[600]

      ),
      home: new MyHelloWordHomePage(
        title : appName
      ),

    );
  }

}


class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),

      ),


      body: new Center(
        child: new Container(
          color: Theme
              .of(context)
              .accentColor,
          child: new Text(
              '带有颜色背景的文本组件',
              style: Theme
                  .of(context)
                  .textTheme
                  .title
          ),
        ),
      ),
      floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.black),
          child: new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.add_location),)),
    );
  }


}


class MyHelloWordHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MyHelloWordHomePageState();

  MyHelloWordHomePage({Key key,this.title}) : super(key:key);

  final String title;

}

class _MyHelloWordHomePageState extends State<MyHelloWordHomePage>{

  int _counter = 0;

  void _addCounter(){
    setState(() {

      _counter++;

    });


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      //布局居中
      body: new Center(
        //垂直布局
        child: new Column(
          //主轴居中对齐
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text('6666666'),
            
            new Text('哒哒哒'),

            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )

          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: _addCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),

    );
  }


}
