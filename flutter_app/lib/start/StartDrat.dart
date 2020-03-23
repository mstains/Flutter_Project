import 'package:flutter/material.dart';
import 'package:flutterapp/home/HomeDart.dart';
import 'package:flutterapp/login/LoginDart.dart';

void main() => runApp(new Start());

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      routes: {
        '/Start': (BuildContext context) => ImageStart(),
        '/Login': (BuildContext context) => LoginDart(),
        '/HomeDart': (BuildContext context) => HomeDart(),
      },
      initialRoute: '/Start',
    );
  }
}

class ImageStart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ImageStart();
  }
}

class _ImageStart extends State<ImageStart> {
  final String _imageUrl =
      'http://bbsfiles.vivo.com.cn/vivobbs/attachment/forum/201709/27/115201dok6v48k3ovbqoro.jpg';

  int _duration = 5;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.network(_imageUrl,fit: BoxFit.fill,),
            new Positioned(
                right: 10.0,
                top: 45.0,
                child: Container(
                  width: 90.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  ),
                  child: FlatButton(
                      //跳转新的页面
                      onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: Text(
                        '跳过${_duration}s',
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
